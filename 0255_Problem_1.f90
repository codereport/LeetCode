! Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

! gcd function take from: https://programming-idioms.org/idiom/74/compute-gcd/3741/fortran
function gcd(m, n) result(answer)
    implicit none
    integer, intent(in)  :: m, n
    integer              :: answer, irest, ifirst

    ifirst = iabs(m)
    answer = iabs(n)
    if (answer.eq.0) then
        answer = ifirst
    else
        do
            irest = mod(ifirst, answer)
            if (irest == 0)  exit
            ifirst = answer
            answer = irest
        enddo
        answer = iabs(answer)
    endif
end function gcd

! LeetCode Solution (original)
function find_gcd(nums, numsSize) result(res)
    implicit none
    integer, intent(in) :: numsSize
    integer, intent(in) :: nums(numsSize)
    integer             :: res

    res = gcd(minval(nums), maxval(nums))
end function find_gcd

! LeetCode Solution (improved)
function find_gcd(nums) 
    integer, intent(in) :: nums(:)
    find_gcd = gcd(minval(nums), maxval(nums))
end function find_gcd
