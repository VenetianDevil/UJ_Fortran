PROGRAM p23
        IMPLICIT NONE
        INTEGER, DIMENSION(2:5, 7:12, -5:4, 7,2) :: macierz
        INTEGER :: rozmiar, rozmiar1, rozmiar3, dolna_g, gorna_g
        macierz = 7

        rozmiar = SIZE(macierz)
        rozmiar1 = SIZE(macierz, 1)
        rozmiar3 = SIZE(macierz, 3)

        dolna_g = LBOUND(macierz, 2)
        gorna_g = UBOUND(macierz, 2)

        PRINT *, "rozmiar = ", rozmiar, " rozmiar1 = ", rozmiar1, " rozmiar3 = ", rozmiar3, &
                " dolna_g = ", dolna_g, " gorna_g = ", gorna_g
        STOP
END PROGRAM p23
