define b8 @i8_to_b8(i8 %v, ptr %p) {
  store i8 %v, ptr %p
  %c = bitcast i8 %v to b8
  ret b8 %c
}

define b16 @i16_to_b16(i16 %v, ptr %p) {
  store i16 %v, ptr %p
  %c = bitcast i16 %v to b16
  ret b16 %c
}

define b32 @i32_to_b32(i32 %v, ptr %p) {
  store i32 %v, ptr %p
  %c = bitcast i32 %v to b32
  ret b32 %c
}

define b64 @i64_to_b64(i64 %v, ptr %p) {
  store i64 %v, ptr %p
  %c = bitcast i64 %v to b64
  ret b64 %c
}

define b64 @ptr_to_b64(ptr %v, ptr %p) {
  store ptr %v, ptr %p
  %c = bitcast ptr %v to b64
  ret b64 %c
}

define b16 @half_to_b16(half %v, ptr %p) {
  store half %v, ptr %p
  %c = bitcast half %v to b16
  ret b16 %c
}

define b32 @float_to_b32(float %v, ptr %p) {
  store float %v, ptr %p
  %c = bitcast float %v to b32
  ret b32 %c
}

define b64 @double_to_b64(double %v, ptr %p) {
  store double %v, ptr %p
  %c = bitcast double %v to b64
  ret b64 %c
}

define b8 @b8_to_b8(b8 %v, ptr %p) {
  store b8 %v, ptr %p
  %c = bitcast b8 %v to b8
  ret b8 %c
}

define b16 @b16_to_b16(b16 %v, ptr %p) {
  store b16 %v, ptr %p
  %c = bitcast b16 %v to b16
  ret b16 %c
}

define b32 @b32_to_b32(b32 %v, ptr %p) {
  store b32 %v, ptr %p
  %c = bitcast b32 %v to b32
  ret b32 %c
}

define b64 @b64_to_b64(b64 %v, ptr %p) {
  store b64 %v, ptr %p
  %c = bitcast b64 %v to b64
  ret b64 %c
}
