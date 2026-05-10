; TEST-ARGS: -disable-undef-input -disable-poison-input -smt-to=60000

define b8 @src_i8_to_b8(i8 %v, ptr %p) {
  store i8 %v, ptr %p
  %l = load b8, ptr %p
  ret b8 %l
}

define b8 @tgt_i8_to_b8(i8 %v, ptr %p) {
  store i8 %v, ptr %p
  %c = bitcast i8 %v to b8
  ret b8 %c
}

define b16 @src_i16_to_b16(i16 %v, ptr %p) {
  store i16 %v, ptr %p
  %l = load b16, ptr %p
  ret b16 %l
}

define b16 @tgt_i16_to_b16(i16 %v, ptr %p) {
  store i16 %v, ptr %p
  %c = bitcast i16 %v to b16
  ret b16 %c
}

define b32 @src_i32_to_b32(i32 %v, ptr %p) {
  store i32 %v, ptr %p
  %l = load b32, ptr %p
  ret b32 %l
}

define b32 @tgt_i32_to_b32(i32 %v, ptr %p) {
  store i32 %v, ptr %p
  %c = bitcast i32 %v to b32
  ret b32 %c
}

define b64 @src_i64_to_b64(i64 %v, ptr %p) {
  store i64 %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @tgt_i64_to_b64(i64 %v, ptr %p) {
  store i64 %v, ptr %p
  %c = bitcast i64 %v to b64
  ret b64 %c
}

define b64 @src_ptr_to_b64(ptr %v, ptr %p) {
  store ptr %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @tgt_ptr_to_b64(ptr %v, ptr %p) {
  store ptr %v, ptr %p
  %c = bitcast ptr %v to b64
  ret b64 %c
}

define b16 @src_half_to_b16(half %v, ptr %p) {
  store half %v, ptr %p
  %l = load b16, ptr %p
  ret b16 %l
}

define b16 @tgt_half_to_b16(half %v, ptr %p) {
  store half %v, ptr %p
  %c = bitcast half %v to b16
  ret b16 %c
}

define b32 @src_float_to_b32(float %v, ptr %p) {
  store float %v, ptr %p
  %l = load b32, ptr %p
  ret b32 %l
}

define b32 @tgt_float_to_b32(float %v, ptr %p) {
  store float %v, ptr %p
  %c = bitcast float %v to b32
  ret b32 %c
}

define b64 @src_double_to_b64(double %v, ptr %p) {
  store double %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @tgt_double_to_b64(double %v, ptr %p) {
  store double %v, ptr %p
  %c = bitcast double %v to b64
  ret b64 %c
}

define b8 @src_b8_to_b8(b8 %v, ptr %p) {
  store b8 %v, ptr %p
  %l = load b8, ptr %p
  ret b8 %l
}

define b8 @tgt_b8_to_b8(b8 %v, ptr %p) {
  store b8 %v, ptr %p
  %c = bitcast b8 %v to b8
  ret b8 %c
}

define b16 @src_b16_to_b16(b16 %v, ptr %p) {
  store b16 %v, ptr %p
  %l = load b16, ptr %p
  ret b16 %l
}

define b16 @tgt_b16_to_b16(b16 %v, ptr %p) {
  store b16 %v, ptr %p
  %c = bitcast b16 %v to b16
  ret b16 %c
}

define b32 @src_b32_to_b32(b32 %v, ptr %p) {
  store b32 %v, ptr %p
  %l = load b32, ptr %p
  ret b32 %l
}

define b32 @tgt_b32_to_b32(b32 %v, ptr %p) {
  store b32 %v, ptr %p
  %c = bitcast b32 %v to b32
  ret b32 %c
}

define b64 @src_b64_to_b64(b64 %v, ptr %p) {
  store b64 %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @tgt_b64_to_b64(b64 %v, ptr %p) {
  store b64 %v, ptr %p
  %c = bitcast b64 %v to b64
  ret b64 %c
}

define b8 @src_i8_const_to_b8() {
  ret b8 255
}

define b8 @tgt_i8_const_to_b8() {
  %c = bitcast i8 255 to b8
  ret b8 %c
}

define b32 @src_i32_const_to_b32() {
  ret b32 4294967295
}

define b32 @tgt_i32_const_to_b32() {
  %c = bitcast i32 4294967295 to b32
  ret b32 %c
}

define <2 x b32> @src__2i32_to_2b32(<2 x i32> %v, ptr %p) {
  store <2 x i32> %v, ptr %p
  %l = load <2 x b32>, ptr %p
  ret <2 x b32> %l
}

define <2 x b32> @tgt__2i32_to_2b32(<2 x i32> %v, ptr %p) {
  store <2 x i32> %v, ptr %p
  %c = bitcast <2 x i32> %v to <2 x b32>
  ret <2 x b32> %c
}

define <2 x b32> @src_i64_to_b32_vec(i64 %v, ptr %p) {
  store i64 %v, ptr %p
  %l = load <2 x b32>, ptr %p
  ret <2 x b32> %l
}

define <2 x b32> @tgt_i64_to_b32_vec(i64 %v, ptr %p) {
  store i64 %v, ptr %p
  %c = bitcast i64 %v to <2 x b32>
  ret <2 x b32> %c
}

define b64 @src_i32_vec_to_b64(<2 x i32> %v, ptr %p) {
  store <2 x i32> %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @tgt_i32_vec_to_b64(<2 x i32> %v, ptr %p) {
  store <2 x i32> %v, ptr %p
  %c = bitcast <2 x i32> %v to b64
  ret b64 %c
}

define <2 x b32> @src__2float_to_2b32(<2 x float> %v, ptr %p) {
  store <2 x float> %v, ptr %p
  %l = load <2 x b32>, ptr %p
  ret <2 x b32> %l
}

define <2 x b32> @tgt__2float_to_2b32(<2 x float> %v, ptr %p) {
  store <2 x float> %v, ptr %p
  %c = bitcast <2 x float> %v to <2 x b32>
  ret <2 x b32> %c
}

define <2 x b32> @src_double_to_b32_vec(double %v, ptr %p) {
  store double %v, ptr %p
  %l = load <2 x b32>, ptr %p
  ret <2 x b32> %l
}

define <2 x b32> @tgt_double_to_b32_vec(double %v, ptr %p) {
  store double %v, ptr %p
  %c = bitcast double %v to <2 x b32>
  ret <2 x b32> %c
}

define b64 @src_float_vec_to_b64(<2 x float> %v, ptr %p) {
  store <2 x float> %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @tgt_float_vec_to_b64(<2 x float> %v, ptr %p) {
  store <2 x float> %v, ptr %p
  %c = bitcast <2 x float> %v to b64
  ret b64 %c
}

define <2 x b32> @src__2b32_to_2b32(<2 x b32> %v, ptr %p) {
  store <2 x b32> %v, ptr %p
  %l = load <2 x b32>, ptr %p
  ret <2 x b32> %l
}

define <2 x b32> @tgt__2b32_to_2b32(<2 x b32> %v, ptr %p) {
  store <2 x b32> %v, ptr %p
  %c = bitcast <2 x b32> %v to <2 x b32>
  ret <2 x b32> %c
}

define <2 x b32> @src_b64_to_b32_vec(b64 %v, ptr %p) {
  store b64 %v, ptr %p
  %l = load <2 x b32>, ptr %p
  ret <2 x b32> %l
}

define <2 x b32> @tgt_b64_to_b32_vec(b64 %v, ptr %p) {
  store b64 %v, ptr %p
  %c = bitcast b64 %v to <2 x b32>
  ret <2 x b32> %c
}

define b64 @src_b32_vec_to_b64(<2 x b32> %v, ptr %p) {
  store <2 x b32> %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @tgt_b32_vec_to_b64(<2 x b32> %v, ptr %p) {
  store <2 x b32> %v, ptr %p
  %c = bitcast <2 x b32> %v to b64
  ret b64 %c
}
