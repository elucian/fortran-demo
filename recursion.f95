! ackermann test
program recursion
   integer :: ack
   real::t1,t2
   call cpu_time(t1)
   write(*,*) ack(3, 12)
   call cpu_time(t2)
   write(*,'("time=",f6.4)') (t2-t1)
 end program

 recursive function ack(m, n) result(a)
   integer, intent(in) :: m,n
   integer :: a
   if (m == 0) then
     a=n+1
   else if (n == 0) then
     a=ack(m-1,1)
   else
     a=ack(m-1, ack(m, n-1))
   end if
 end function