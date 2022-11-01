program main
  integer :: io   ! unit number
  integer :: stat ! status number
  !check if file exist and remove it
  logical :: exists
  inquire(file="mcol.txt", exist=exists)
  if (exists) then
    open(file="mcol.txt", newunit=io, iostat=stat)
    if (stat == 0) then
       close(io, status="delete", iostat=stat)  
    end if
  end if
  !create new file mcol.txt
  open(newunit=io, file="mcol.txt", &
       status="new", action="write")
  block ! local scope
    real(8):: a,b,c,d
    call srand(2022) ! initialize
    do i=1,20
        a=rand(0);b=rand(0)
        c=rand(0);d=rand(0)
        write(io, "(a, i4.2, 4f8.4)") &
                  "row", i, a, b, c, d
    end do
  end block
  close(io)
end program