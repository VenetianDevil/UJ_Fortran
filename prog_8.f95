PROGRAM p8
IMPLICIT NONE

TYPE person
	CHARACTER(LEN=12) :: first_name
	CHARACTER(LEN=1) :: middle_initial
	CHARACTER(LEN=12) :: last_name
	INTEGER :: age
	CHARACTER(LEN=1) :: sex
	CHARACTER(LEN=11) :: social_security
END TYPE person

TYPE(person) :: jack, jill
jack=person("Jack", "R", "Hagen", 47, "M", "123-45-6789")
jill=person("Jill", "M", "Smith", 39, "F", "987-65-4321")
PRINT *, jill%last_name
PRINT *, jack%age
IF(jack%sex=="F") PRINT *, jack%first_name, " jest kobieta"
IF(jill%sex=="F") PRINT *, jill%first_name, " jest kobieta"

END PROGRAM p8
