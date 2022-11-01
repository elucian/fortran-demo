program main
  implicit none

  real :: pi
  real :: radius
  real :: height
  real :: area
  real :: volume

  pi = 3.1415927

  print *, 'Cylinder radius:'
  read(*,*) radius

  print *, 'Cylinder height:'
  read(*,*) height

  area = pi * radius**2.0
  volume = area * height

  print *, 'radius is: ', radius
  print *, 'height is: ', height
  print *, 'base area: ', area
  print *, 'volume is: ', volume

end program