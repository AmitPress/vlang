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

fn (mut s Sll) push_back(dt int) { // it is not hard to implement and it has no such thing to worry much.
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

fn (mut s Sll) pop_back() { // we have to consider some case where it may go wrong
	if !isnil(s.head) {
		if isnil(s.head.next) {
			s.head = &Node(0)
		}else{
			mut ptr := s.head
			for !isnil(ptr.next.next) {
				ptr = ptr.next
			}
			ptr.next = &Node(0)
		}
	}else{
		println('cannot delete')
	}
	if s.ids.len != 0 {
		k := s.ids.len - 1
		s.ids=s.ids[..k]
	}
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
	l.push_back(35)
	l.push_back(40)
	l.push_back(98)
	l.pop_back()
	l.pop_back()
	l.push_back(98)
	println(l.ids)
	l.showall()
	
}