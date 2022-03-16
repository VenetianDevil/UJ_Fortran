PROGRAM p12
        IMPLICIT NONE
        INTEGER, PARAMETER :: range = SELECTED_INT_KIND(15)
        INTEGER(KIND=range) :: suma, n
        PRINT *, "range = ", range
        suma = 0_range
        n=0_range

        DO
                n=n+1
                IF(n>1234567890) EXIT
                IF(n==55) CYCLE
                IF(n.EQ.122) CYCLE
                IF(n>=20.AND.n.LE.30) CYCLE
                IF(n.GE.20.AND.n<=30) CYCLE
                suma = suma + n
        END DO
        
        PRINT *, "suma:", suma
END PROGRAM p12
