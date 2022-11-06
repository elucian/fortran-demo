module raise
  public process
contains
  subroutine process(test, err)
    integer, intent(in) :: test
    integer, intent(inout) :: err
    if (test > 10) then
       err = ERR_INVALID; return
    else if (test < 5) then
       err = ERR_DEFAULT; return
    else
       do i=1, test 
          write (*,'(i3)',advance="no") i
       end do
       print *, ""
       err = ERR_NONE
    end if;
  end subroutine
end module

program main
  use raise
  ! define 3 error coddes
  integer, parameter :: &
    ERR_NONE = 0, &
    ERR_DEFAULT = 1, &
    ERR_INVALID = 2
  integer:: count, error
  write (*,'(a7)',advance="no") "count:"
  read *, count
  call process (count, error)
  if (error == ERR_NONE) then
     print *, "done. no errors!"
  else if (error == ERR_DEFAULT) then
     print *, "too small: < 5"
  else if (error == ERR_INVALID) then
     print *, "too large: > 10"
  end if;
contains

end program