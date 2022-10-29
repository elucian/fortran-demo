program main
  print  * , "Hello " // get_name()
  stop "program stop"
contains
  function get_name() result(name)
     character (len=40) :: name
     character (len=20) :: name1, name2
     print *, 'Who are you? :'
     read *, name1, name2
     name = trim(name1) // " " // &
            trim(name2) 
  end function
end program