PROGRAM p27
    IMPLICIT NONE
    REAL, DIMENSION(10,10,21,21) :: x
    REAL, DIMENSION(0:9,0:9, -10:10, -10:10) :: y
    REAL, DIMENSION(11:20, -9:0, 0:20, -20:0) :: z,v,diff
    INTEGER :: i,j,k,l

    y=1.0; z=2.0
    DO i=1, SIZE(x, 1)
        DO j = 0, SIZE(x, 2)
            DO k = 1, SIZE(x, 3)
                DO l = 1, SIZE(x, 4)
                    x(i,j,k,l) = y(i-1,j-1,k-11,l-11) + z(i+10,j-10,k-1,l-21)
                END DO
            END DO
        END DO
    END DO
PRINT *, x
END PROGRAM p27
