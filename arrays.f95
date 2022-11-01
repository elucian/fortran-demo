program arrays
  ! 1D integer array
  integer, dimension(3) :: A

! give value to all elements
  A(:)=0

  ! print all values
  print "(3i4)", A(1:3)
end program