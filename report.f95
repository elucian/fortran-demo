program main
  integer :: io   ! unit number
  integer :: stat ! status number
  !check if file exist and remove it
  logical :: exists
  inquire(file="report.txt", exist=exists)
  if (exists) then
    open(file="report.txt", newunit=io, iostat=stat)
    if (stat == 0) then
       close(io, status="delete", iostat=stat)  
    end if
  end if
  !create new file log.txt
  open(newunit=io, file="report.txt", &
       status="new", action="write")
  do i=1,10
      write(io, *) "row", i
  end do
  close(io)
end program