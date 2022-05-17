program prog42
    implicit none
    real :: a,b,c

    write(unit=*,fmt=*) "please enetr 3 numbers to be sorted"
    read(unit=*,fmt=*)a,b,c
    write(unit=*,fmt=*) "thnaks, u have entered: ",a,b,c

    if(a > b) call swap(a,b)
    if(a> c) call swap(a,c)
    if(b>c) call swap(b,c)
    write(unit=*,fmt=*) "the numbers in increasing order are: ",a,b,c
    stop

    contains
    subroutine swap(x,y)
        real, intent(in out) :: x, y
        real :: aux

        aux = x
        x = y
        y = aux
        return
        end subroutine swap
end program prog42
