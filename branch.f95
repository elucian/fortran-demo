program branch
  ! enter 2 numbers
  integer n1, n2
  character(len=12):: fmt 
  fmt = "(i5,a3,i5)"
  write (*,*) "enter n1:"
  read *, n1
  write (*,*) "enter n2:"
  read *, n2
  ! sort the numbers
  if (n1 < n2) then
     print fmt, n1, " < ", n2
  else if (n1 > n2) then
     print fmt, n2, " < ", n1
  else
     print fmt, n1, " = ", n2
  end if;
end program