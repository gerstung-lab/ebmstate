## Resubmission after 'CRAN policy violation'
Dear CRAN Maintainer,

this re-submission fixes the following 
warning, which appeared after a recent 
update on the upstream package 'mstate'
>
checking Rd cross-references ... WARNING
Missing link or links in documentation object 'boot_probtrans.Rd':
  '[mstate:trans]{transMat}'

It also fixes a couple of small bugs.
Many thanks.
Best wishes,
Rui


## Test environments
Local:  
  1. macOS Big Sur, R-release
  
Using R-hub package builder:  

  2. Windows Server 2008 R2 SP1, R-devel, 32/64 bit  
  3. Ubuntu Linux 16.04 LTS, R-release, GCC  
  4. Fedora Linux, R-devel, clang, gfortran  
  5. Debian Linux, R-devel, GCC ASAN/UBSAN  
  6. Windows Server 2008 R2 SP1, R-oldrel (3.6.3), 32/64 bit

## R CMD check results
There were no ERRORs or WARNINGs for any platform tested.

The following note (or very similar) appeared in 
the platforms mentioned above except macOS Big Sur
and Debian Linux:

>* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Rui Costa <rui.costa@ebi.ac.uk>’

>Found the following (possibly) invalid DOIs:
  DOI: 10.1093/biomet/78.4.719
    From: DESCRIPTION
    Status: libcurl error code 56:
    	OpenSSL SSL_read: Connection reset by peer, errno 104
    Message: Error
      
I checked that the DOI is correct.
   
There no other NOTES for any of the platforms.

## Downstream dependencies
There are currently no downstream dependencies for this package.
