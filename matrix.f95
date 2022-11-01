program matrix
  ! 2D integer array
  integer, dimension(3, 3) :: M

  ! give value to all elements
  do i=1,3
    do j=1,3
       M(i,j)=i*j
    end do
  end do
  ! output matrix on 3 columns
  print "(3i4)", M(1:3,1:3)
end program