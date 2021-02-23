// strings and charecters

fn main(){
	// string length
	name := "rituals"
	println(name.len)

	// if condition

	if name == 'rituals' {
		println(" \'\' and \"\" are same")
	}

	if name == 'ritual' {
		println("strange behaviour!")
	}

	// slices 
	s := 'slice me of'
	println(s[0..4]) // [)
	println(s[0..5])

	// reverse slice??
	// println(s[3..0]) // error

	// string to int

	println(s.int()) // 0 didnt work
	n := "42"
	println(n.int()) // string has to be made out of numbers
	

}