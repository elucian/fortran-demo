program point
  real, target :: a, b
  real, pointer:: pa
  if (associated(pa)) then
     print *, 'test 1: pa is currently associated'
  else
     print *, 'test 1: pa is currently not associated'
  endif
  a = 1.2; b = 2.2 
  pa => a ! associate pointer pa to variable a
  print *, "pa = ", pa
  if (associated(pa)) then
     print *, 'test 2: pa is currently associated to a'
  else
     print *, 'test 2: pa is currently not associated'
  endif
  nullify (pa)
  if (associated(pa)) then
     print *, 'test 3: pa is currently associated'
  else
     print *, 'test 3: pa is currently not associated'
  endif
  pa => b ! associate pointer pa to variable b
  if (associated(pa)) then
     print *, 'test 4: pa is currently associated to b'
  else
     print *, 'test 4: pa is currently not associated'
  endif
  ! modify the variable b using it's alias (pa)
  pa = pa + 1 
  print *, "b = ", b
end program