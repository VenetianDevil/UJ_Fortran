PROGRAM p18
        IMPLICIT NONE
        INTEGER :: a,b
        REAL :: c, d
        PRINT *, 'TYPE 123456789'
        READ 101, a, b, c, d
        PRINT 200, a, b, a-b, c, d, c-d
        101 FORMAT(T6, I4, TL6, I4, TL6, F4.1, TL6, F4.2)
        200 FORMAT(5X, I4, " minus", I5, " is ", I5, TR4, F6.2, &
                " minus", F6.2, " is ", F8.3)
END PROGRAM p18
