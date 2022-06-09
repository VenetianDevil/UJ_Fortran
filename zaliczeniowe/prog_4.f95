PROGRAM prog33
  IMPLICIT NONE
  INTEGER, PARAMETER :: rdp=SELECTED_REAL_KIND(15)
  INTEGER, PARAMETER :: idp = SELECTED_INT_KIND(15)
  REAL(KIND=rdp) :: xx, yy, rr, pi_moje, delta
  REAL(KIND=rdp) :: pi=3.14159265358979323846264338327950288_rdp
  REAL :: x
  INTEGER(KIND=idp) :: i, wewnatrz
  INTEGER, PARAMETER :: max_do=1000000_idp

  REAL :: integral

  x = 0
  integral = 0

  CALL init_random_seed()
  CALL RANDOM_NUMBER(XX)
  CALL RANDOM_NUMBER(YY)

  DO i=1, max_do
    CALL RANDOM_NUMBER(XX)
    xx = x + xx + (pi - x)
    integral = integral + f(xx)
  END DO

  PRINT *, "Integral = ", (pi - x) * (integral/max_do)
  STOP

  CONTAINS
  SUBROUTINE init_random_seed()
      INTEGER :: i, n, clock
      INTEGER, DIMENSION(:), ALLOCATABLE :: seed

      CALL RANDOM_SEED(SIZE=n)
      PRINT *, "SIZE = ", n
      ALLOCATE(seed(n))

      CALL SYSTEM_CLOCK(COUNT=clock)
      PRINT *, "CLOCK = ", clock

      seed = clock + 37 * (/(i-1, i=1, n)/)
      CALL RANDOM_SEED(PUT = seed)

      DEALLOCATE(seed)
  END SUBROUTINE init_random_seed

  FUNCTION f(x) result(p)
    REAL(KIND=8), intent(IN):: x
    REAL(KIND=8) :: p

    p = sin(x)
  END FUNCTION f
  
END PROGRAM prog33

