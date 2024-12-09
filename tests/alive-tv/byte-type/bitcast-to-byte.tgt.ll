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

define b8 @i8_const_to_b8() {
  %1 = bitcast i8 255 to b8
  ret b8 %1
}

define b32 @i32_const_to_b32() {
  %1 = bitcast i32 4294967295 to b32
  ret b32 %1
}

define <2 x b32> @_2i32_to_2b32(<2 x i32> %v, ptr %p) {
  store <2 x i32> %v, ptr %p
  %c = bitcast <2 x i32> %v to <2 x b32>
  ret <2 x b32> %c
}

define <2 x b32> @i64_to_b32_vec(i64 %v, ptr %p) {
  store i64 %v, ptr %p
  %c = bitcast i64 %v to <2 x b32>
  ret <2 x b32> %c
}

define b64 @i32_vec_to_b64(<2 x i32> %v, ptr %p) {
  store <2 x i32> %v, ptr %p
  %c = bitcast <2 x i32> %v to b64
  ret b64 %c
}

define <2 x b32> @_2float_to_2b32(<2 x float> %v, ptr %p) {
  store <2 x float> %v, ptr %p
  %c = bitcast <2 x float> %v to <2 x b32>
  ret <2 x b32> %c
}

define <2 x b32> @double_to_b32_vec(double %v, ptr %p) {
  store double %v, ptr %p
  %c = bitcast double %v to <2 x b32>
  ret <2 x b32> %c
}

define b64 @float_vec_to_b64(<2 x float> %v, ptr %p) {
  store <2 x float> %v, ptr %p
  %c = bitcast <2 x float> %v to b64
  ret b64 %c
}

define <2 x b32> @_2b32_to_2b32(<2 x b32> %v, ptr %p) {
  store <2 x b32> %v, ptr %p
  %c = bitcast <2 x b32> %v to <2 x b32>
  ret <2 x b32> %c
}

define <2 x b32> @b64_to_b32_vec(b64 %v, ptr %p) {
  store b64 %v, ptr %p
  %c = bitcast b64 %v to <2 x b32>
  ret <2 x b32> %c
}

define b64 @b32_vec_to_b64(<2 x b32> %v, ptr %p) {
  store <2 x b32> %v, ptr %p
  %c = bitcast <2 x b32> %v to b64
  ret b64 %c
}

define <2 x b64> @_2ptr_to_2b64(<2 x ptr> %v, ptr %p) {
  store <2 x ptr> %v, ptr %p
  %c = bitcast <2 x ptr> %v to <2 x b64>
  ret <2 x b64> %c
}
