program prog_3

  IMPLICIT NONE
  INTEGER(KIND=4):: outcome
  outcome = suma(1,5)
  print *, "Sum (1,5) = ", outcome

CONTAINS
  RECURSIVE FUNCTION suma(a, b) result(outcome)
    IMPLICIT NONE
    INTEGER, intent(in) :: a, b
    INTEGER(KIND=4) :: outcome

    IF(a == b) THEN
      outcome = a
    ELSE
      outcome = b + suma(a, b - 1)
    END IF

  END FUNCTION suma

END PROGRAM prog_3

