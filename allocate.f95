program main
   ! declare two empty strings
   character(len=5) :: string_one
   character(len=:), allocatable:: string_two 

   ! allocate memory for string two
   allocate(character(6) :: string_two)

   string_one = "first"
   string_two = "second"

   ! concatenate and print
   print *, string_one //" "// string_two
end program