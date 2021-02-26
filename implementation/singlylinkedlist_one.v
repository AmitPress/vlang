// Nod is a compound data type for building SLL
struct Node {
mut:
	id int
	data int
	next &Node = 0 // in v you can't directly change the memory
}

struct Sll {
mut:
	init int
	ids []int
	size int
	head &Node = 0
}

fn (s Sll)showinit(){
	println(s.init)
}

fn (mut s Sll) push_back(dt int) {
	s.init++
	// make a node by the given data
	dt_node := &Node{
		id: s.init
		data : dt
	}
	if isnil(s.head) {
		s.head = dt_node
	}else{
		mut ptr := s.head
		for !isnil(ptr.next) {
			ptr = ptr.next
		}
		ptr.next = dt_node
	}
	s.ids << s.init
}
/*
Node{
	id: 1
	data: 30
	next: &<circular>
}
Node{
    id: 2
    data: 46
    next: &<circular>
}
Node{
    id: 3
    data: 78
    next: &nil
}
*/
fn (mut s Sll) showall(){
	mut ptr := s.head
	for !isnil(ptr) {
		println(*ptr)
		ptr = ptr.next
	}
}

fn main(){
	mut l := Sll{}
	l.push_back(30)
	l.push_back(46)
	l.push_back(78)
	l.showall()
	l.showinit() // 4
	println(l.ids) // [1, 2, 3]
}