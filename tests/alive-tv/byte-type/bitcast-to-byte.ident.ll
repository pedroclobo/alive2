define b8 @i8_to_b8(i8 %v) {
  %c = bitcast i8 %v to b8
  ret b8 %c
}

define b16 @i16_to_b16(i16 %v) {
  %c = bitcast i16 %v to b16
  ret b16 %c
}

define b32 @i32_to_b32(i32 %v) {
  %c = bitcast i32 %v to b32
  ret b32 %c
}

define b64 @i64_to_b64(i64 %v) {
  %c = bitcast i64 %v to b64
  ret b64 %c
}

define b64 @ptr_to_b64(ptr %v) {
  %c = bitcast ptr %v to b64
  ret b64 %c
}

define b16 @half_to_b16(half %v) {
  %c = bitcast half %v to b16
  ret b16 %c
}

define b32 @float_to_b32(float %v) {
  %c = bitcast float %v to b32
  ret b32 %c
}

define b64 @double_to_b64(double %v) {
  %c = bitcast double %v to b64
  ret b64 %c
}
