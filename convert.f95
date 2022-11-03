program main
  print "(2a)", str(10),str(20) 
contains
  character(len=10) function str(k)
    ! "Convert an integer to string."
    integer, intent(in) :: k
    write (str, *) k
    str = trim(adjustl(str))
  end function
end program