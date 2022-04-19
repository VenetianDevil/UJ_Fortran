PROGRAM p21
        IMPLICIT NONE
        INTEGER, DIMENSION(5,3) :: macierz
        INTEGER, DIMENSION(15) :: wektor
        wektor = (/0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14/)
        macierz = RESHAPE(wektor,(/5,3/))
        PRINT *, macierz
        STOP 
END PROGRAM p21
