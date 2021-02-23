```
type Sumed = int | f64

fn arbi_func(a int) Sumed {
	if a == 1 {
		return 45
	}else{
		return 4.5
	}
}

fn main(){
    x := arbi_func(2)
    println(x) // Sumed(4.5)
}
```
Hi, is there any way to get the raw data from Sumed(4.5) without using ```match``` ? I have tried to cast it to f64 and got c compilation error.