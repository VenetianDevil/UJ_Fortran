PROGRAM p11
        IMPLICIT NONE
        REAL :: suma,a_j
        REAL, PARAMETER :: epsilon=1.0E-40
!        epsilon=1.0E-25
        a_j=.99999
        suma=0.0

        DO
                a_j=a_j*a_j
                suma=suma+a_j
                PRINT *, a_j
                if(a_j < epsilon) EXIT
        END DO

        PRINT *, "suma = ",suma
        STOP
END PROGRAM p11
