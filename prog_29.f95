PROGRAM p29
    IMPLICIT NONE
    TYPE:: point; REAL:: x,y; END TYPE point
    TYPE:: line; REAL:: a,b,c; END TYPE line
    TYPE(point):: p1, p2; TYPE(line):: p1_to_p2

    WRITE(*,*) "please eneter x1 and y1"; READ(*,*)p1
    WRITE(*,*) "please eneter x2 and y2"; READ(*,*)p2

    p1_to_p2%a=p2%y-p1%y
    p1_to_p2%b=p1%x-p2%x
    p1_to_p2%c=p1%y*p2%x-p2%y*p1%x
    WRITE(*,*) "ax + by +c = 0"; WRITE(*,*)"a=", p1_to_p2%a
    WRITE(*,*) "b=", p1_to_p2%b; WRITE(*,*)"c=", p1_to_p2%c
    STOP
END PROGRAM p29
