define i8 @f1(ptr %p) {
  %v = load i8, ptr %p
  ret i8 %v
}

define i16 @f2(ptr %p) {
  %v = load i16, ptr %p
  ret i16 %v
}

define i32 @f3(ptr %p) {
  %v = load i32, ptr %p
  ret i32 %v
}

define i64 @f4(ptr %p) {
  %v = load i64, ptr %p
  ret i64 %v
}
