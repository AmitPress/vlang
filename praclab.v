// Nod is a compound data type for building SLL
struct Node {
mut:
	data int
	next &Node = 0 // in v you can't directly change the memory
}

struct Sll {
mut:
	size int
	head &Node = 0
}

fn (mut s Sll) push_back(dt int) {
	// make a node by the given data
	dt_node := &Node{
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
}

fn (mut s Sll) showall(){
	mut ptr := s.head
	for !isnil(ptr) {
		println(ptr.data)
		ptr = ptr.next
	}
}

fn main(){
	mut l := Sll{}
	l.push_back(30)
	l.push_back(46)
	l.push_back(78)
	l.showall()
}