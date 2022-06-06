module Universal_Constants
  implicit none
  REAL, PARAMETER :: pi=3.1415926536
end module Universal_Constants

REAL function trig_fun_degrees(trig_fun, degrees, minutes, seconds)
  USE Universal_Constants
  implicit none

  real, external :: trig_fun
  integer, intent(in) :: degrees, minutes, seconds

  REAL :: angle

  angle = (degrees + minutes/60.0 + seconds/3600.0) * pi/180.0

  trig_fun_degrees = trig_fun(angle)

end function trig_fun_degrees

program test_for_trig_fun_degreed
  implicit none
  
  REAL, intrinsic :: sin, cos, tan
  real, external :: trig_fun_degrees

  integer :: degs, mins, secs
  character :: answer

  do
    PRINT *, "Please give an angle in degrees, minutes and seconds"
    PRINT *, "without any fractional parts"
    PRINT *, "Degrees"
    READ *, degs
    PRINT *, "Minutes (0-59): "
    READ *, mins
    PRINT *, "Seconds (0-59): "
    READ *, secs

    PRINT *, "Its sine is ", trig_fun_degrees(SIN, degs, mins, secs)
    PRINT *, "Its cosine is ", trig_fun_degrees(COS, degs, mins, secs)
    PRINT *, "Its tangent is ", trig_fun_degrees(TAN, degs, mins, secs)
    
    PRINT *, "Another one? (Y/N) "
    READ *, answer

    IF(answer/="Y" .AND. answer/="y") EXIT
 
  end do

end program test_for_trig_fun_degreed
