package main

import (
    "fmt"
    "net/http"
    // "encoding/json"
    "log"
)

// func runningSum(nums []int) []int {

//     tmp := 0

//     for i:=0 ; i < len(nums) ; i ++ {
//         nums[i] += tmp
//         tmp = nums[i]
//     }
//     return nums
// }


func main() {

// ...
    url := "https://pokeapi.co/api/v2/pokemon/ditto"
    req, err := http.NewRequest(http.MethodGet,url,nil)
    if err != nil {
        log.Fatal(err)
    }
    
    // Twitter client
    // client := twitter.NewClient(resp)
    // nums := []int{1,2,3,4}
    // runningSum(nums)
    fmt.Println(req)
}
