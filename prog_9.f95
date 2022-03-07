PROGRAM p9
IMPLICIT NONE
INTERFACE
	REAL FUNCTION cube_root(x)
!		no REAL :: x
	END FUNCTION cube_root
END INTERFACE

REAL :: a,b
PRINT *, "type an number:"
READ *, a
b=cube_root(a)
PRINT *, "cube root of ", a, "is ", b
STOP
END PROGRAM p9

REAL FUNCTION cube_root(x)
	IMPLICIT NONE
	REAL :: x,log_x
	log_x = LOG(x)
	cube_root = EXP(log_x/3.0);
END FUNCTION cube_root
