package create

import (
    // "bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
)

func Create_rand_file(n string,s,x,y int) bool{
    f,err:= os.Create(n)
    if err != nil {
        fmt.Println(err)
        return false
    }

    for i:= 0; i < s; i++ {
        _,err = fmt.Fprintln(f,strconv.Itoa(rand.Intn(y)+x) )
        if err != nil {
            fmt.Println(err)
            return false
        }
    }
    fmt.Println("O processo foi terminado com sucesso")
    return true
}


