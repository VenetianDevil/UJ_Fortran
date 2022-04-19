PROGRAM p32
    REAL :: r(5,5)
    CALL init_random_seed()
    CALL RANDOM_NUMBER(r)
    PRINT *, r

    CONTAINS
    SUBROUTINE init_random_seed()
        INTEGER :: i, n, clock
        INTEGER, DIMENSION(:), ALLOCATABLE ::seed
        CALL RANDOM_SEED(SIZE = n)
        PRINT *, "SIZE = ", n
        ALLOCATE(seed(n))

        CALL SYSTEM_CLOCK(COUNT = clock)
        PRINT *, "CLOCK = ", clock

        seed = clock + 37 * (/(i-1, i=1, n)/)
        CALL RANDOM_SEED(PUT = seed)
        PRINT *, "SEED = ", seed
        DEALLOCATE(seed)
        END SUBROUTINE
END PROGRAM p32
