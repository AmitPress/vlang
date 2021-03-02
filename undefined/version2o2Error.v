struct Node {
	data int
	next ?&Node = &Node(0)
}

fn main(){
	n2 := &Node{data: 25}
	n1 := Node{data: 30, next: n2}
	println(n1.next.data)
}