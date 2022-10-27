! using labels
program label
real :: r
integer i, j
i = 0 ! initialize the index
outer: do i=0, 3
  inner: do j=0, 6
    call random_number(r)
    if (modulo(j,2) == 0) then
       cycle inner;  
    end if;
    print "(i2,i2,f8.2)",i, j, r
  end do inner 
end do outer
print *, "done"
end program