program precision_problems
use, intrinsic:: iso_fortran_env
implicit none

include 'kind.txt'
! look at classic problems with any floating point usages.
! To save agony, it's best for EVERY float constant to have a decimal point and _wp after EACH float number in an equation.

real(real64), parameter :: me = 9.10938356e-31_wp, mebad = 9.10938356_wp*10**-31   

print *,'electron rest mass is',me,'kg., not',mebad




end program
