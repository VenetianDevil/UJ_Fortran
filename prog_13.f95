PROGRAM p13
        IMPLICIT NONE
        INTEGER, PARAMETER :: st=8
        INTEGER :: r,s
        LOGICAL, DIMENSION(10, 10) :: k1, k2
        LOGICAL, DIMENSION(11:20, 11:20) :: m
        COMPLEX, DIMENSION(1:10, 2+ST) :: z,c
        CHARACTER(LEN=10), DIMENSION(1:3):: napisy
        DO r=1,10
                DO s=1,10
                        IF(r==s) THEN
                                K1(r,s) =.TRUE.
                        ELSE
                                K1(r,s) =.FALSE.
                        END IF
                END DO
        END DO

        k2=k1
        m=k2

        PRINT *, m
        PRINT *
        DO s=11,20
        print *, (m(s,r),r=11,20,1)
        END DO

        STOP

END PROGRAM p13
