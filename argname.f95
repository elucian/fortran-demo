! arguments by name
program main
  integer:: r1,r2,r3
  r1 = suma(2)
  r2 = suma(2,4)
  r3 = suma(2,4,6)
  print *, "r1 = ", r1
  print *, "r2 = ", r2
  print *, "r3 = ", r3
contains
  function suma(a,b,c) result(re)
    integer:: a, b, c, re 
    optional:: b, c
    ! default values 
    integer:: b1, c1
    if (present(b)) b1=b
    if (present(c)) c1=c
    ! prepare result
    re = a + b1 + c1
  end function 
end program