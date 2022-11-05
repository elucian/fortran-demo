program error
  integer :: io_stat
  character (len=256) :: io_msg
  ! try to open a file that do not exist  
  open (file='myFile.dat', unit=10, &
        access = "append", status="old", &
        iostat=io_stat, iomsg=io_msg)
  ! analyze the error
  if (io_stat/=0) then
    write (*,*) "Open myFile.dat failed."
    write (*,*) "iostat = ", io_stat
    write (*,*) "iomsg = ", trim(io_msg)
  else
    write (*,*) "File was open succesfuly."
    close (unit=10)
  end if
end program