MODULE funkcje_obliczeniowe
  IMPLICIT NONE
  PUBLIC :: dwumianNewtona, rownanieKwadroatowe
  REAL, PUBLIC :: x1, x2

  CONTAINS
    FUNCTION dwumianNewtona(a, b, n) RESULT (suma)
      IMPLICIT NONE
      REAL(KIND=8) :: suma
      INTEGER :: k
	    INTEGER, INTENT(IN) :: a, b, n

      DO k = 0, n
        suma = suma + symbolNewtona(n,k)*(a**(n-k))*(b**k)
      END DO

	    RETURN

      CONTAINS
        RECURSIVE FUNCTION silnia(n) RESULT (sil)
          IMPLICIT NONE
          INTEGER :: sil, temp
          INTEGER, intent(in) :: n

          IF(n == 0 .OR. n==1) THEN
            sil = 1
          ELSE
      	    temp = silnia(n-1)
            sil = n * temp
          END IF
        END FUNCTION silnia

       	FUNCTION symbolNewtona(n, k) RESULT (symbNew)
          IMPLICIT NONE
          INTEGER :: s, r, d !licznik, pierwsza cz mianownika, druga cz. mianownika
          INTEGER, INTENT(in) :: n, k
          REAL(KIND=8) :: symbNew

          s=silnia(n)
          r=silnia(k)
          d=silnia(n-k)

          symbNew = s/(r*d)
          RETURN

        END FUNCTION symbolNewtona

    END FUNCTION dwumianNewtona

    FUNCTION rownanieKwadroatowe(a, b, c) RESULT (ileMiejsc)
      IMPLICIT NONE
      REAL :: delta
      INTEGER :: ileMiejsc, a, b, c

      delta = (b*b) - (4*a*c)

      IF (delta < 0.0) THEN
        ileMiejsc = 0
      ELSE IF (delta == 0) THEN
        x1 = -b / (2*a)
        ileMiejsc = 1
      ELSE
        delta=sqrt(delta)
        x1=(-b-delta)/(2*a)
        x2=(-b+delta)/(2*a)
        ileMiejsc=2
      END IF

    END FUNCTION rownanieKwadroatowe

END MODULE funkcje_obliczeniowe

PROGRAM zaliczenie
  USE funkcje_obliczeniowe
  IMPLICIT NONE
  INTEGER :: a, b, c, n, option, ileMiejsc

  do
    PRINT *, "Wybierz co chcesz policzyc, podajac index opcji."
    PRINT *, "1. Dwumian Newtona"
    PRINT *, "2. Rownanie kwadratowe"
    PRINT *, "3. Zakończ działanie programu"
    READ *, option

    if ( option == 1 ) then
      PRINT *, "(a + b)^n"
      PRINT *, "Podaj a:"
      READ *, a  
      PRINT *, "Podaj b:"
      READ *, b
      PRINT *, "Podaj n:"
      READ *, n

      PRINT *, "Dwumian Newtona dla podanych danych = ", dwumianNewtona(a, b, n)
      
    else IF(option == 2) THEN
      PRINT *, "Podaj wspolczynnik a:"
      READ *, a  
      PRINT *, "Podaj wspolczynnik b:"
      READ *, b
      PRINT *, "Podaj wspolczynnik c:"
      READ *, c

      ileMiejsc = rownanieKwadroatowe(a, b, c)
      if ( ileMiejsc == 0 ) then
        PRINT *, "Równanie nie ma miejsc zerowych."
      ELSE IF(ileMiejsc == 1) then
        PRINT *, "Równanie ma 1 miejsce zerowe. x1 = ", x1
      else IF(ileMiejsc == 2) then
        PRINT *, "Równanie ma 2 miejsca zerowe. x1 = ", x1, "x2 = ", x2
      end if
    else if (option == 3) then
      EXIT
    end if
 
  end do
END PROGRAM zaliczenie

