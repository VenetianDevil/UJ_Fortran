PROGRAM p25
        IMPLICIT NONE
        INTEGER :: i,j
        INTEGER, DIMENSION(2,3) :: martix_A
        INTEGER, DIMENSION(3,2) :: martix_B
        INTEGER, DIMENSION(2,2) :: martix_AB
        INTEGER, DIMENSION(2) :: vector_C =(/1,2/)
        INTEGER, DIMENSION(3) :: vector_BC
        martix_A(1,1) = 1
        martix_A(1,2)=2
        martix_A(1,3)=3
        martix_A(2,1)=4
        martix_A(2,2)=5
        martix_A(2,3)=6

        martix_B=TRANSPOSE(martix_A)

        DO i=1,3
                PRINT *, (martix_B(i,j),j=1,2)
        END DO

        martix_AB=MATMUL(martix_A, martix_B)
        PRINT *
        DO i =1,2
                PRINT *, (martix_AB(i,j),j=1,2)
        END DO

        vector_BC=MATMUL(martix_B, vector_C)
        PRINT *
        PRINT *, vector_BC
        STOP
END PROGRAM
