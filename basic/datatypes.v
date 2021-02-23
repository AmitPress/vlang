//primitives
// i8 i16 int i64 i128 ---> INTEGER
// byte u16 u32 u64 u128 ---> UNSIGNED
// rune
// f32 f64
// byteptr voidptr charptr size_t
// any

// unsigned integer of 8 bit is called byte
// int represents i32

u := byte(1232)

v := 12 + u

print(v) // 220

a := f32(44.6)
b := f64(a)

println(b) // 22044.599998474121094

j := f64(44.6)
k := f32(j)
println(k) // 44.599998474121094 

// how to get 2 precision places

l := f32(44.6)
m := int(l)
println(m) // 44

// precision

jj := f32(32.4656)
println('${jj:.1f}')

