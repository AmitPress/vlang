```
func (l *sll) remb(){
	if l.head == nil {
		fmt.Println("nothing to delete")
	}else{
		if l.head.next == nil {
			l.head = nil
		}else{
			ptr := l.head
			for ptr.next.next != nil {
				ptr = ptr.next
			}
			ptr.next = nil
		}
	}
}
```
this go code works fine

```
fn (mut s Sll) pop_back() { 
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
		println('nothing to delete')
	}
}

```
despite having same logic this behaves differently and deosn't work when there is 2 or more things to pop.