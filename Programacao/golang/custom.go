package custom

// import (
//     "fmt"
// )

func runningSum(nums []int) []int {

    tmp := 0

    for i, num := range nums {
        nums[i] += tmp
        tmp = num
    }
    return nums
}


// func sort() {
    
//     nums := []int{1,2,3}
//     runningSum(nums)
//     fmt.Println(nums)
// }
