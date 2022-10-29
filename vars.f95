program variables
  implicit none

  integer :: amount
  real :: pi
  complex :: frequency
  character :: initial
  logical :: isOkay
  character(len=20):: str

  amount = 10
  pi = 3.1415927
  frequency = (1.0, -0.5)
  initial = 'A'
  isOkay = .false.

  print *, amount
  print *, pi
  print *, initial
  print *, isOkay, .true.

  str = "Fortran is cool"
  print *, str
end program variables