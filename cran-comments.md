## Test environments
Local:  
  1. macOS Catalina, R-release  
Using R-hub package builder:  
  2. Windows Server 2008 R2 SP1, R-devel, 32/64 bit  
  3. Ubuntu Linux 16.04 LTS, R-release, GCC  
  4. Fedora Linux, R-devel, clang, gfortran  
  5. Debian Linux, R-devel, GCC ASAN/UBSAN  
  6. Windows Server 2008 R2 SP1, R-oldrel (3.6.3), 32/64 bit

## R CMD check results
There were no ERRORs or WARNINGs for any platform tested.

Notes in each platform:

1. Local macOS, Debian Linux, Windows R-oldrel: 0 notes.

2. Other platforms: 1 note   

  * Note:  
   
      >checking CRAN incoming feasibility ... NOTE  
      >Maintainer: 'Rui Costa <rui.costa@ebi.ac.uk>'  
      >New submission
    
      Comment to note:  
      This seems to be an unavoidable comment for first submissions.  


## Downstream dependencies
There are currently no downstream dependencies for this package.
