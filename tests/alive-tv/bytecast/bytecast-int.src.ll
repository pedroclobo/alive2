define i8 @f1(ptr %p) {
  %v = load b8, ptr %p
  %c = bytecast b8 %v to i8
  ret i8 %c
}

define i16 @f2(ptr %p) {
  %v = load b16, ptr %p
  %c = bytecast b16 %v to i16
  ret i16 %c
}

define i32 @f3(ptr %p) {
  %v = load b32, ptr %p
  %c = bytecast b32 %v to i32
  ret i32 %c
}

define i64 @f4(ptr %p) {
  %v = load b64, ptr %p
  %c = bytecast b64 %v to i64
  ret i64 %c
}

define i8 @f5() {
  %c = bytecast b8 3 to i8
  ret i8 %c
}
