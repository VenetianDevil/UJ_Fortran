program prog_1
  IMPLICIT NONE
  INTEGER :: i, number, parzyste, nieparzyste

  parzyste = 0
  nieparzyste = 0

  open(unit=1, file="data_1.txt")

  DO i = 1, 15
    READ(1,*) number
    IF(modulo(number, 2) == 0) THEN
        parzyste = parzyste + number
    ELSE
        nieparzyste = nieparzyste + number
    END IF
  END DO

  CLOSE(1)

  PRINT *, "Liczby parzyste", parzyste
  PRINT *, "Liczby nieparzyste", nieparzyste

end program prog_1
