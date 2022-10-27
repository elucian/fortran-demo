! number of days in a month
program main
integer:: month, num_days
write (*,*) "month #"
read *, month
select case (month)
    case (2)
        num_days = 28
    case (7:8)
        num_days = 31
    case (1,3,5,10,12)
        num_days = 31
    case default
        num_days = 30
end select
print *, "num days = ", num_days
end program