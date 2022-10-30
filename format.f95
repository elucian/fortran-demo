program main
  real:: r = 225.502
  integer:: i = 25
  character(len=35):: t= "Test"
  character(len=*), parameter:: &
  fmt='(a," ", i5.4," ", f10.5)'
  print fmt, trim(t), i, r
end program