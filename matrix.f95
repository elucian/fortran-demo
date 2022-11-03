program matrix
  ! 2D integer array
  integer, dimension(3, 3) :: M

  ! give value to all elements
  do j=1,3
    do i=1,3
       M(i,j)=j*10+i
    end do
  end do
  ! output matrix on 3 columns
  print "(3i4)", M
  print "(9i4)", M
end program