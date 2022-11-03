program objects
  character(len=*), parameter :: &
  fmt = "(i3,i3,f6.2,' ',a,' ',a)"
  ! derived data type
  type :: wheel
    integer :: spokes, diameter
    real :: width
    character(len=4):: breaks 
    character(len=15) :: material
  end type wheel
  ! define and create two wheels 
  type(wheel) :: mountain, road
  mountain = wheel(32, 24, 2.2, & 
                  "disk", "steel")
  ! second weel attributes
  road%diameter=26; road%width=1.5
  road%spokes=22; road%breaks="rim"
  road%material="aluminium"
  ! list the two weels with attributes
  print fmt, road
  print fmt, mountain
end program

  