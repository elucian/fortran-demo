program parallel
  parameter ( n = 100000 )
  ! declare coarray
  real:: v(n)[*]
  real:: d,t1,t2 
  call cpu_time(t1)
  call srand(time())
  v(:) = [(rand(0)*100, i=1,n)]
  s = 0.0
  do i = 1, n
    s = s + v(i)
  end do
  sync all
  call cpu_time(t2); d=t2-t1
  write(*, '(" s = ", e21.15)') s
  print *, "t = ", d
end program