program expressions
  integer:: a = 10, b = 3
  real:: r = .0
  print *, a + 1
  print *, "a/b =", a/b
  r = (a + 2)/b
  print *, "r = ", r
  e = a ** b
  print *, "e = ", e
end program