PROGRAM prog44
	IMPLICIT NONE
	INTEGER, PARAMETER :: real12 = SELECTED_REAL_KIND(12)
	REAL(KIND = real12) :: X
	REAL(KIND = real12) :: root = 1.0
	REAL(KIND = real12), PARAMETER :: tolerance = 1.0E-10_real12
	
	WRITE(*,*) "please enter the number whitch square root is wanted."
	READ (*,*) x
	x = ABS(x)
	DO WHILE (ABS(root ** 2 / x - 1.0) > tolerance)
		WRITE(*,*) root
		root = 0.5*(root + x/root)
	END DO
	WRITE(*,*) "square root of: ", x, " is ", root
	STOP
END PROGRAM prog44
