! fortran outarg.f95
program main
  integer:: op = 0
  call test(a=2, b=4, re = op)
  print *, "a = 2, b = 4"
  print *, "a + b = ", op
contains
  subroutine test(a,b,re)
    integer, intent(in):: a, b  
    integer, intent(out):: re
    ! prepare result
    re = a + b
  end subroutine 
end program