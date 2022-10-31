program main

! escape character
character :: lf = achar(10) 

! this statement does nothing
if (.true.) continue


! long string on multiline
print "(a)", "continue "//lf//&
  "can be used "        //lf//&
  "wen a statement "    //lf//&
  "is required "        //lf//&
  "but there is "       //lf//&
  "nothing to do there!"
end program