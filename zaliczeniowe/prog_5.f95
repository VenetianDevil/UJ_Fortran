module letters
  contains

  function read_letter() result(str)
      character(len=500) :: str
      open(unit=2, file="data_5.txt")
      read(2,*) str
      close(2)
      print *, len_trim(str)
  end function read_letter

  function count_vowels(str) result(amount)
      character(len=500), intent(in) :: str
      integer:: i, amount
      amount = 0
      do i= 1, len(str)
        select case(str(i:i))
          case ("a")
            amount = amount + 1
          case ("A")
            amount = amount + 1
          case ("e")
            amount = amount + 1
          case ("E")
            amount = amount + 1
          case ("i")
            amount = amount + 1
          case ("I")
            amount = amount + 1
          case ("o")
            amount = amount + 1
          case ("O")
            amount = amount + 1
          case ("u")
            amount = amount + 1
          case ("U")
            amount = amount + 1
          case ("y")
            amount = amount + 1
          case ("Y")
            amount = amount + 1
          end select
      end do
  end function count_vowels

end module letters

program prog_5
  use letters
  integer:: i
  character(len=1000) :: str
  str = read_letter()
  print *, count_vowels(str)
end program prog_5
