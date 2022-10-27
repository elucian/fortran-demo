! do-until loop
program until
  integer:: i = 0
  do  
    print *, i
    i = i + 1
    if (i > 4) then 
       exit
    end if
  end do
end program