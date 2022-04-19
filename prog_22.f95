PROGRAM p22
        IMPLICIT NONE
        INTEGER, DIMENSION(5, 3) :: macierz
        INTEGER, DIMENSION(15) :: wektor
        INTEGER, DIMENSION(2) :: zakres
        INTEGER :: kolumna, wiersz
        wektor=(/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14/)
        macierz=RESHAPE(wektor,(/5,3/))
      	PRINT *, macierz
	zakres=(/5,3/)
	macierz=RESHAPE(wektor, zakres)
	PRINT *
        PRINT *, macierz(:4,:2)
        PRINT *
        DO wiersz = 1,3
                PRINT *, (macierz(kolumna, wiersz), kolumna=1,5,1)
        END DO
        STOP
END PROGRAM p22
