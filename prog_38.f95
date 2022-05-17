MODULE zawiera_procedure_Norm
    IMPLICIT NONE
    PUBLIC:: Norm
    CONTAINS
    SUBROUTINE Norm(v, total, flag)
        REAL, DIMENSION(:), INTENT(IN):: v
        REAL, INTENT(OUT) :: total
        LOGICAL, INTENT(OUT) :: flag

        total = SQRT(SUM(v*v))

        flag=(total>=1.0E5)
        RETURN
    END SUBROUTINE Norm
END MODULE zawiera_procedure_Norm

PROGRAM prog38
    USE zawiera_procedure_Norm
    IMPLICIT NONE
    REAL, DIMENSION(6), PARAMETER :: &
            v = (/10.0,200.0,3000.0,40000.0,500000.0,6000000.0/)
    REAL :: total; logical :: flag
    WRITE(UNIT=*,FMT="('wartosci macierzy v', 6(E10.3, 5X))" ) v
    WRITE(UNIT=*,FMT="( 'wartosc macierzy v', 6(E10.1, 5X))" ) v
    WRITE(UNIT=*,FMT="( 'wartosc macierzy v', 6(ES10.2, 5X))" ) v
    WRITE(UNIT=*,FMT="( 'wartosc macierzy v', 6(ES10.2, 5X))" ) v
    CALL Norm(v,total,flag)
	WRITE (UNIT=*, FMT=77) total, flag
77	FORMAT("total, flag = ", EN10.3, 2X, L3)

	GOTO 99999
	PRINT *, "tego wydruku nie zobaczysz"
	99999 CONTINUE

	IF(flag .EQV. .TRUE.) GOTO 99998
		PRINT *, "tego wydruku tez nie zobacysz"
	99998 CONTINUE
	STOP
END PROGRAM prog38
