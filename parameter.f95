! local parameter
program main
  integer:: r1,r2,r3
  r2 = avg(2,4)
  print *, "avg = ", r2
contains
  function avg(a,b) result(re)
    integer:: a, b, re 
    integer, parameter:: c = 2
    re = (a + b) / 2
  end function 
end program