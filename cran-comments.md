## Resubmission after 'CRAN policy violation'
Dear Cran Maintainer,
I had the deadline of 02 Sep 2020 to solve some memory
leak issues in my package code. Meanwhile my package was removed from CRAN last week, most likely
because the maintainer who got in touch with me got an automatic out-of-office reply, which violated the CRAN
rules.
In any case, I'm resubmitting now and solving the memory leak issue.
Many thanks.
Best wishes,
Rui

## Memory leak issue

Valgrind output showed memory leaks when running
'msfit_generic-example.R'.

After debugging, I re-run this example and obtained 
the following Valgrind output summary:

>==103886== Memcheck, a memory error detector
==103886== Copyright (C) 2002-2017, and GNU GPL'd, by Julian Seward et al.
==103886== Using Valgrind-3.15.0 and LibVEX; rerun with -h for copyright info
==103886== Command: /gpfs/nobackup/gerstung/rui/env/conda/envs/renv/lib/R/bin/exec/R -e example(msfit_generic,package="ebmstate") --vanilla
==103886==
[...]
==103886== HEAP SUMMARY:
==103886==     in use at exit: 190,104,742 bytes in 37,606 blocks
==103886==   total heap usage: 78,993 allocs, 41,387 frees, 302,147,983 bytes allocated
==103886== 
==103886== LEAK SUMMARY:
==103886==    definitely lost: 0 bytes in 0 blocks
==103886==    indirectly lost: 0 bytes in 0 blocks
==103886==      possibly lost: 0 bytes in 0 blocks
==103886==    still reachable: 190,104,742 bytes in 37,606 blocks
==103886==                       of which reachable via heuristic:
==103886==                         newarray           : 4,264 bytes in 1 blocks
==103886==         suppressed: 0 bytes in 0 blocks
==103886== Rerun with --leak-check=full to see details of leaked memory
==103886== 
==103886== For lists of detected and suppressed errors, rerun with: -s
==103886== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)


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

1. Windows 2008 R-devel: 1 note   

  * Note:  

>Maintainer: 'Rui Costa <rui.costa@ebi.ac.uk>'
  
>New submission
  
>Package was archived on CRAN

Please see my comments in the beginning of this document.

>Possibly mis-spelled words in DESCRIPTION:
    Schall (45:138)

'Schall' (an author name) is correctly spelled
  
>Found the following (possibly) invalid DOIs:
    DOI: 10.1093/biomet/78.4.719
      From: DESCRIPTION
      Status: libcurl error code 56:
      	Send failure: Connection was reset
      Message: Error
      
I checked that the DOI is correct.
   
2. Other platforms: 0 notes.

## Downstream dependencies
There are currently no downstream dependencies for this package.
