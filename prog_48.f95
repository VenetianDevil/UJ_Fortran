MODULE parametry_opcjonalne
	IMPLICIT NONE
	PUBLIC :: Options
	CONTAINS
		SUBROUTINE Options(str1, str2)
		CHARACTER (LEN=*), INTENT(IN), OPTIONAL :: str1, str2
		INTEGER :: I1, I2
		WRITE(UNIT=*, FMT = *) "=========================================="
	
		IF (PRESENT( str1)) THEN
			I1 = LEN(str1)
			WRITE(UNIT = *, FMT = *) " 1:", str1
		ELSE
			i1=-1
		end if
		IF(PRESENT(str2)) THEN
			I2=LEN(str2)
			WRITE(UNIT=*, FMT=*) "2:", str2
		ELSE
			i2=-1
		END IF

		WRITE(UNIT=*, FMT=*) "Lengths: ", I1, I2
		RETURN
		END SUBROUTINE Options
END MODULE parametry_opcjonalne

PROGRAM prog_48
	USE parametry_opcjonalne
	IMPLICIT NONE

	CALL Options()
	CALL Options("pierwszy_parametr", "drugi_parametr")
	CALL Options("pierwszy_parametr")
	CALL Options(str1="333")
	CALL Options(str2="4444")
	CALL Options(str1="55555", str2="666666")
	CALL Options(str1="")
	CALL Options(str2="")
	CALL Options(str2="drugi", str1="pierwszy")
	STOP
END PROGRAM prog_48
