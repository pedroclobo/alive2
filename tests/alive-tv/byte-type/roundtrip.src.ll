define i8 @f1(i8 %b) {
  %1 = bitcast i8 %b to b8
  %2 = bytecast exact b8 %1 to i8
  ret i8 %2
}

define i16 @f2(i16 %b) {
  %1 = bitcast i16 %b to b16
  %2 = bytecast exact b16 %1 to i16
  ret i16 %2
}

define i32 @f3(i32 %b) {
  %1 = bitcast i32 %b to b32
  %2 = bytecast exact b32 %1 to i32
  ret i32 %2
}

define i64 @f4(i64 %b) {
  %1 = bitcast i64 %b to b64
  %2 = bytecast exact b64 %1 to i64
  ret i64 %2
}
