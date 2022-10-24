! Print matrix A to screen
subroutine print_matrix(n,m,A)
  implicit none
  integer, intent(in) :: n
  integer, intent(in) :: m
  real, intent(in) :: A(n, m)
  integer :: i

  do i = 1, n
    print *, A(i, 1:m)
  end do
end subroutine print_matrix

program call_sub
  implicit none

  real :: mat(2, 3)
  mat(:,:) = 0.0
  mat(1,1) = 1.1
  mat(2,1) = 2.1
  mat(1,3) = 3
  mat(2,3) = 2.3

  call print_matrix(2, 3, mat)
end program call_sub