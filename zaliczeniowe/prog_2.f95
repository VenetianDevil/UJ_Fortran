program prog_2
  IMPLICIT NONE
  INTEGER:: i, deposit

  deposit = 1000

  DO i = 1, 30
    deposit = deposit + (deposit * 0.02)
  END DO

  PRINT *, "Lokata koncowa = ", deposit

end program prog_2
