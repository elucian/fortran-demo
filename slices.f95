program slices
  implicit none

  integer :: i, j
  integer :: m(9, 9) 

  ! Implied do loop constructor
  do i=1,9
      m(i,:) = [(j*10+i, j = 1, 9)]
  end do
  print "(9i4)", m

  ! Set value of elements by range
  m(:,:) = 0  
  m(1:5,1:5) = 1  
  m(6:,6:)   = 2  
  print *, repeat("_",36)
  ! Print new values
  print "(9i4)", m
end program