PROGRAM p24
        IMPLICIT NONE
        INTEGER :: i,j
        REAL :: mala, duza, cala, mnoze1, mnoze2
        INTEGER, PARAMETER :: miesiac=12, rok=5
        INTEGER, DIMENSION (miesiac, rok) :: forsa
        DO i =1, miesiac
                DO j = 1, rok
                        forsa(i,j) = INT(ABS(SIN(REAL(i))) * j) *(-1) **i
                END DO
        END DO

        PRINT *, forsa
        WHERE (forsa.LE.0) forsa = -forsa
        WHERE (forsa.EQ.0) forsa = 1
                mala = SUM(forsa, forsa < 3)
                duza = SUM(forsa, forsa >= 3)
                cala = SUM(forsa)
        PRINT *, 'mala = ', mala, ' duza = ', duza, 'cala = ', cala
        PRINT *, forsa
        mnoze1 = PRODUCT(forsa)
        mnoze2 = PRODUCT(forsa, mask=forsa>3)
        PRINT *, 'mnoze1=', mnoze1, ' mnoze2=', mnoze2
        STOP
END PROGRAM p24
