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

define ptr @b64_to_ptr(ptr align 8 %p) {
  %v = load b64, ptr %p
  %c = bytecast exact b64 %v to ptr
  ret ptr %c
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

define i8 @b32_to_i8(ptr %p) {
  %v = load b32, ptr %p
  %c = bytecast exact b32 %v to i8
  ret i8 %c
}

define ptr @b128_to_ptr(ptr %p) {
  %v = load b128, ptr %p
  %c = bytecast exact b128 %v to ptr
  ret ptr %c
}

define float @b64_to_float(ptr %p) {
  %v = load b64, ptr %p
  %c = bytecast exact b64 %v to float
  ret float %c
}
