MODULE nasze_zmienne
    IMPLICIT NONE
    REAL :: rank, x,y
END MODULE nasze_zmienne

PROGRAM prog36
    USE nasze_zmienne

    INTERFACE
        SUBROUTINE root()
            USE nasze_zmienne

        END SUBROUTINE root
    END INTERFACE

    x= 1048576; rank = 20
    CALL root()
    WRITE(*,*) "20-th root of ", x, "equal ", y
    STOP
END PROGRAM prog36

SUBROUTINE root()
    USE nasze_zmienne
    y=EXP(LOG(x/rank))
    RETURN
END SUBROUTINE root
