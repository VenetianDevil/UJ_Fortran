PROGRAM prog31
    IMPLICIT NONE
    INTEGER, PARAMETER :: rdp = SELECTED_REAL_KIND(15)
    REAL(KIND=rdp) :: x, xx
    INTEGER :: i

    DO i =1,5
        CALL RANDOM_NUMBER(x)
        CALL RANDOM_NUMBER(xx)
        PRINT *, x, xx
    END DO

    CALL init_random_seed()
    PRINT *
    DO i=1,5
        CALL RANDOM_NUMBER(x)
        CALL RANDOM_NUMBER(xx)
        PRINT *, x, xx
    END DO
    STOP
    CONTAINS
    SUBROUTINE init_random_seed()
                INTEGER :: i, n, clock
        INTEGER, DIMENSION(:), ALLOCATABLE ::seed
        CALL RANDOM_SEED(SIZE = n)
        PRINT *, "SIZE = ", n
        ALLOCATE(seed(n))
	
	CALL RANDOM_SEED(GET=seed)
	PRINT *, "SEED = ", seed
	CALL SYSTEM_CLOCK(COUNT=clock)
	PRINT *, "CLOCK = ", clock
	seed = clock + 37 * (/ (i-1, i=1,n)/)
	CALL RANDOM_SEED(PUT=seed)
	PRINT *, "SEED = ", seed

	DEALLOCATE(seed)

    END SUBROUTINE

END PROGRAM prog31
