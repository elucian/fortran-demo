module class_Circle
  implicit none
  real, private, parameter :: pi = 3.14159265d0
  type, public :: Circle
     real :: radius
   contains
     procedure :: area => circle_area
     procedure :: print => circle_print
  end type Circle
contains
  function circle_area(this) result(area)
    class(Circle), intent(in) :: this
    real :: area
    area = pi * this%radius**2
  end function circle_area

  subroutine circle_print(this)
    class(Circle), intent(in) :: this
    real :: area
    area = this%area()  
    print "('radius=' f6.2 'area=' f10.3)", this%radius, area
  end subroutine circle_print
end module class_Circle

program circle_test
  use class_Circle
  implicit none
  ! Declare a Circle.
  type(Circle) :: test  
  real :: radius
  print *, "Enter 0, for exit."
  do
     write (*,"(a)", & 
          advance="no") "radius:"
     read *, radius
     if (radius == 0) exit
     test = Circle(radius)    
     ! Call the type-bound subroutine
     call test%print  
  end do
end program  