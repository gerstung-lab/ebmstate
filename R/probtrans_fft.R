#'Compute subject-specific transition probabilities
#'using a convolution algorithm based on the Fast Fourier transform.
#'@details
#'The \code{time} argument is crucial for precision.
#' The density of time points and 
#'the upper time limit should
#'be increased until the estimated curves become stable.
#'A useful rule of thumb is to set the upper time limit
#'to a time point in which the 
#'probability of each transient state is zero and the probability of
#'each absorbing state is constant.
#' 
#' The algorithm behind \code{probtrans_ebmstate} is based 
#' on the convolution of density and survival functions and
#' is suitable for processes with a tree-like transition
#' structure only.
#'
#'@param initial_state The present function 
#'estimates state occupation probabilities from the state given
#'in this argument.
#'@param cumhaz An \code{msfit} object created by running
#'\code{mstate} or \code{mstate_generic}.
#'@param time A vector of positive and increasing time points
#' starting from and including zero.
#'@return An object of class 'probtrans'. See the 'value' 
#'section in the help page of \code{mstate::probtrans}.
#'@author Rui Costa
#'@seealso \code{\link{probtrans}};
#'
#'@export

probtrans_fft<-function(initial_state,cumhaz,time){
  tmat<-cumhaz$trans
  transitions<-na.exclude(as.vector(tmat))
  spline_list<-cumhaz_splines(cumhaz)
  chaz<-sapply(transitions,function(x) spline_list[[x]](time))
  hazards<-apply(chaz,2,function(x) diff(c(0,x)))
  simultaneous_risks<-apply(tmat,1,na.omit)
  surv_vectors<-sapply(simultaneous_risks,function(x) exp(-rowSums(chaz[,x,drop=FALSE])))
  trans_dens_fun<-function(transition){
    trans_indices<-which(tmat==transition,arr.ind = TRUE)
    surv_vectors[,trans_indices[1]]*hazards[,transition]
  }
  dens_vectors<-sapply(transitions,trans_dens_fun)
  surv_vectors_fft<-apply(surv_vectors,2,fft)
  dens_vectors_fft<-apply(dens_vectors,2,fft)
  probs_fft<-matrix(NA,ncol = ncol(dens_vectors_fft),nrow=nrow(dens_vectors_fft))
  states_and_trans<-list(NULL)
  names(states_and_trans)<-initial_state
  done_states<-vector("character",0)
  fun1<-function(initial_state){
    to_states<-names(na.omit(tmat[initial_state,]))
    for(i in to_states){
      states_and_trans[[i]]<<-c(states_and_trans[[initial_state]],na.omit(tmat[initial_state,i]))
    }
    NULL
  }
  while(length(initial_state)>0){
    sapply(initial_state,fun1)
    done_states<-c(done_states,initial_state)
    initial_state<-setdiff(names(states_and_trans),done_states)
  }
  fun2<-function(state_name){
    if(length(na.omit(tmat[state_name,]))>0){
      M<-cbind(dens_vectors_fft[,states_and_trans[[state_name]]],surv_vectors_fft[,state_name])
      probs_vector_fft<-apply(M,1,prod)
      probs_vector<-Re(fft(probs_vector_fft,inverse = TRUE)/length(probs_vector_fft))
    }else{
      M<-dens_vectors_fft[,states_and_trans[[state_name]],drop=FALSE]
      probs_vector_fft<-apply(M,1,prod)
      probs_vector<-cumsum(Re(fft(probs_vector_fft,inverse = TRUE)/length(probs_vector_fft)))
    }
  }
  probs_matrix<-cbind(time,sapply(colnames(tmat),fun2))
  probs_matrix<-probs_matrix[seq.int(1,length(time),length.out =  1000),]
  probtrans_fft_object<-list(as.data.frame(probs_matrix),trans=tmat,direction="forward",predt=0)
  class(probtrans_fft_object)<-"probtrans"
  return(probtrans_fft_object) 
  
}

