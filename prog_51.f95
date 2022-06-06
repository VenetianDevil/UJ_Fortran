module wektor
  implicit none
  type vector
    double precision :: x,y,z
  end type vector

  type(vector), parameter :: i_ = vector(1.0, 0.0, 0.0)
  type(vector), parameter :: j_ = vector(0.0, 1.0, 0.0)
  type(vector), parameter :: k_ = vector(0.0, 0.0, 1.0)

  interface operator (+)
    module procedure suma
  end interface

  interface operator (.dodaj.)
    module procedure suma
  end interface

contains
  type(vector) function suma(v1,v2)
  implicit none
  type(vector), intent(in) :: v1,v2
      suma%x = v1%x + v2%x
      suma%y = v1%y + v2%y
      suma%z = v1%z + v2%z
      return
  end function suma

  subroutine results(head, v)
    implicit none
    character*(*), intent(in) :: head
    type(vector), intent(in) :: v
      write(6, '(1x,a10,3f8.3)') head, v%x, v%y, v%z    
  end subroutine results
  
end module wektor

program prog_51
  use wektor
  implicit none
  
  type(vector) :: v1 = vector(1.0, 2.0, 3.0)
  type(vector) :: v2 = vector(1.0, 4.0, 9.0)
  type(vector) :: v3 = vector(-1.0, -1.0, -1.0)

  call results('v1 = ', v1)
  call results('v2 = ', v2)
  call results('v3 = ', v3)
  v3 = suma(v1,v2)
  call results('nowy v3 = ', v3)
  v3 = v1 .dodaj. i_
  call results('nowy v3 = ', v3)
  v3 = v1 + j_
  call results('nowy v3 = ', v3)

end program prog_51

