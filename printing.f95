program printing

! printing in file
integer::i=10
character(len=100):: c
open (unit=1,file="file")
write (unit=1,fmt=*) i
close (unit=1)

end program