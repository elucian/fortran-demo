program main
  implicit none
  ! define dynamic arrays
  integer, allocatable :: darray(:) 
  integer:: i = 0, d = 0 ! define the dimension
  print *, "dimension:", read *, d
  allocate(darray(d))  ! resize the arrays
  darray = [(i,i=1,d)] ! using constructor

  ! create a dynamic format and print
  print "("//trim(str(d))//"i4)" , darray
  deallocate(darray)   ! remove from memory
contains
  ! "Convert an integer to string."
  character(len=20) function str(k)
    integer, intent(in) :: k
    write (str, *) k
    str = adjustl(str)
  end function
end program