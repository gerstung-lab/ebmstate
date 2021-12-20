Dear CRAN Maintainer,

this re-submission fixes minor bugs, changes some argument names, and adds a function.\
Many thanks.\
Best wishes,\
Rui


## Test environments
Local:  
  * macOS Big Sur, R-release

Using R-hub package builder:  
  * Fedora Linux, R-devel, clang, gfortran
  * Ubuntu Linux 20.04.1 LTS, R-release, GCC
  * Windows Server 2022, R-devel, 64 bit
  * Debian Linux, R-devel, GCC ASAN/UBSAN
  * Windows Server 2008 R2 SP1, R-release, 32/64 bit

## R CMD check results
There were no ERRORs or WARNINGs for any platform tested.

The following note (or very similar) appeared in 
the platforms Fedora Linux, Ubuntu Linux and Windows Server 2022:

>* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Rui Costa <rui.costa@ebi.ac.uk>’

>Found the following (possibly) invalid DOIs:
  DOI: 10.1093/biomet/78.4.719
    From: DESCRIPTION
    Status: Forbidden
    Message: 403
      
I checked that the DOI is correct.
   
There were no other NOTES for any of the platforms.

## Downstream dependencies
There are currently no downstream dependencies for this package.
