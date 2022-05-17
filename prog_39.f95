MODULE zawiera_procedure_Summit
    IMPLICIT NONE
    PUBLIC::Summit
    CONTAINS
    SUBROUTINE Summit(array)
        REAL, INTENT(IN), DIMENSION(:,:) :: array
        WRITE(UNIT=*,FMT=*)"Row sums: ", SUM(array,dim=2)
        WRITE(UNIT=*,FMT=*)"Column sums: ", SUM(array,dim=1)
        WRITE(UNIT=*,FMT=*)"Total: ", SUM(array)
        RETURN
    END SUBROUTINE Summit
END MODULE zawiera_procedure_Summit

PROGRAM prog39
    USE zawiera_procedure_Summit
	IMPLICIT NONE
    REAL, ALLOCATABLE, DIMENSION(:,:) :: a
    INTEGER :: n
    OPEN(UNIT=1,FILE="x.txt",STATUS="OLD",ACTION="READ",POSITION="REWIND")
    READ(UNIT=1,FMT=*)n
    ALLOCATE(a(n,n))
    READ(UNIT=1,FMT=*)a
    CALL Summit(a)
    STOP
END PROGRAM prog39
