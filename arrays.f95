program arrays
  ! 1D integer array
  integer, dimension(3) :: A
  integer:: i

! give value to all elements
  A=[(i, i=1,3)]

  ! print all values
  print "(3i4)", A(1:3)
end program