## Reply to CRAN maintainer Martina Schmirl's comments

>Please use only undirected quotation marks in the description text.
--> "?ebmstate-package" or "?'ebmstate-package'"

This has been corrected.

>If there are references describing the methods in your package, please add these in the description field of your DESCRIPTION file in the form
authors (year) <doi:...>
authors (year) <arXiv:...>
authors (year, ISBN:...)
or if those are not available: <https:...>
with no space after 'doi:', 'arXiv:', 'https:' and angle brackets for auto-linking.
(If you want to add a title as well please put it in quotes: "Title")

I have added a reference.

>Please write TRUE and FALSE instead of T and F.
(Please don't use "T" or "F" as vector names.)

This has been corrected.

>\dontrun{} should only be used if the example really cannot be executed (e.g. because of missing additional software, missing API keys, ...) by the user. That's why wrapping examples in \dontrun{} adds the comment ("# Not run:") as a warning for the user.
Does not seem necessary.
Please unwrap the examples if they are executable in < 5 sec, or replace \dontrun{} with \donttest{}.

I have replaced '\dontrun' by '\donttest{}'.

>Please always add all authors, contributors and copyright holders in the Authors@R field with the appropriate roles.
From CRAN policies you agreed to:
"The ownership of copyright and intellectual property rights of all components of the package must be clear and unambiguous (including from the authors specification in the DESCRIPTION file). Where code is copied (or derived) from the work of others (including from R itself), care must be taken that any copyright/license statements are preserved and authorship is not misrepresented.
Preferably, an ‘Authors@R’ would be used with ‘ctb’ roles for the authors of such code. Alternatively, the ‘Author’ field should list these authors as contributors.
Where copyrights are held by an entity other than the package authors, this should preferably be indicated via ‘cph’ roles in the ‘Authors@R’ field, or using a ‘Copyright’ field (if necessary referring to an inst/COPYRIGHTS file)."
e.g.: Terry Therneau, Thomas Lumley,
Please explain in the submission comments what you did about this issue.

I have added the authors and contributors of packages 'mstate' and 'survival' as contributors to the current package. These are the only packages from which code parts were copied. In the
authors[at]R field of the description, I added
the following type of comment: "co-author of 
'[package name]', a package from which code parts were copied." Where the source files contain functions from other packages, this is explicitly stated.

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
   
      >New submission  

      >Possibly mis-spelled words in DESCRIPTION:  
        ebmstate (8:97)
    
      Comment to note:  
      
      'ebmstate' is the package name.


## Downstream dependencies
There are currently no downstream dependencies for this package.
