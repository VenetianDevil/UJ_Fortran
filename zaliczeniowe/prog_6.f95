program prog_6
  real:: x1, x2, x3
  real(kind=4):: start, prev
  real:: next
  integer:: found

  found = 0
  start = -3

  prev = y(-3.0)
 
  do i = 0, 7000
    start = start + 0.001
    next = y(start)
    
    if ((prev < 0 .AND. next > 0) .OR. (prev > 0 .AND. next < 0)) then
      if(found == 0) then
        x1 = start
        found = found + 1
      else if(found == 1) then
        x2 = start
        found = found + 1
      else
        x3 = start
      end if
    end if

    prev = next
  end do

  print *, "x1 = ", x1, "x2 = ", x2, "x3 = ", x3

  CONTAINS
  function y(x) result (m_0)
    real, intent(in):: x
    real :: m_0
  
    m_0 = (x*x*x) + ((-3) * x*x) + ((-4) * x) + 12
  end function y
end program prog_6
