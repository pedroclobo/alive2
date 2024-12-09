define i8 @b8_to_i8(ptr %p) {
  %v = load b8, ptr %p
  %c = bytecast exact b8 %v to i8
  ret i8 %c
}

define i16 @b16_to_i16(ptr %p) {
  %v = load b16, ptr %p
  %c = bytecast exact b16 %v to i16
  ret i16 %c
}

define i32 @b32_to_i32(ptr %p) {
  %v = load b32, ptr %p
  %c = bytecast exact b32 %v to i32
  ret i32 %c
}

define i64 @b64_to_i64(ptr %p) {
  %v = load b64, ptr %p
  %c = bytecast exact b64 %v to i64
  ret i64 %c
}

define <2 x i32> @to_int_vec(ptr %p) {
  %v = load <2 x b32>, ptr %p
  %c = bytecast exact <2 x b32> %v to <2 x i32>
  ret <2 x i32> %c
}

define ptr @b64_to_ptr(ptr align 8 %p) {
  %v = load b64, ptr %p
  %c = bytecast exact b64 %v to ptr
  ret ptr %c
}

define <2 x ptr> @to_ptr_vec(ptr %p) {
  %v = load <2 x b64>, ptr %p
  %c = bytecast exact <2 x b64> %v to <2 x ptr>
  ret <2 x ptr> %c
}

define half @b16_to_half(ptr %p) {
  %v = load b16, ptr %p
  %c = bytecast exact b16 %v to half
  ret half %c
}

define float @b32_to_float(ptr %p) {
  %v = load b32, ptr %p
  %c = bytecast exact b32 %v to float
  ret float %c
}

define double @b64_to_double(ptr %p) {
  %v = load b64, ptr %p
  %c = bytecast exact b64 %v to double
  ret double %c
}

define <2 x float> @to_float_vec(ptr %p) {
  %v = load <2 x b32>, ptr %p
  %c = bytecast exact <2 x b32> %v to <2 x float>
  ret <2 x float> %c
}

define <8 x i8> @_4b16_to_8i8(ptr %p) {
  %v = load <4 x b16>, ptr %p
  %c = bytecast exact <4 x b16> %v to <8 x i8>
  ret <8 x i8> %c
}

define <2 x ptr> @_4b32_to_2ptr(ptr %p) {
  %v = load <4 x b32>, ptr %p
  %c = bytecast exact <4 x b32> %v to <2 x ptr>
  ret <2 x ptr> %c
}

define <2 x i32> @b64_to_2i32(ptr %p) {
  %v = load b64, ptr %p, align 8
  %c = bytecast exact b64 %v to <2 x i32>
  ret <2 x i32> %c
}
