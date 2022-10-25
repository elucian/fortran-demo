program main
  implicit none
  character (len = 20) :: name1, name2
  print *, 'Who are you? :'
  read *, name1, name2
  print *, "Hello ", trim(name1), " ", name2
end program