define b32 @src_b8(b32 %b) {
  %ext = bitextract b8, b32 %b, i32 8
  %ins = bitinsert b32 %b, b8 %ext, i32 8
  ret b32 %ins
}

define b32 @tgt_b8(b32 %b) {
  ret b32 %b
}

define b64 @src_i8_0(b64 %b) {
  %ext = bitextract i8, b64 %b, i32 0
  %ins = bitinsert b64 %b, i8 %ext, i32 0
  ret b64 %ins
}

define b64 @tgt_i8_0(b64 %b) {
  ret b64 %b
}

define b64 @src_i8_16(b64 %b) {
  %ext = bitextract i8, b64 %b, i32 16
  %ins = bitinsert b64 %b, i8 %ext, i32 16
  ret b64 %ins
}

define b64 @tgt_i8_16(b64 %b) {
  ret b64 %b
}

define b64 @src_i16_0(b64 %b) {
  %ext = bitextract i16, b64 %b, i32 0
  %ins = bitinsert b64 %b, i16 %ext, i32 0
  ret b64 %ins
}

define b64 @tgt_i16_0(b64 %b) {
  ret b64 %b
}

define b64 @src_i16_16(b64 %b) {
  %ext = bitextract i16, b64 %b, i32 16
  %ins = bitinsert b64 %b, i16 %ext, i32 16
  ret b64 %ins
}

define b64 @tgt_i16_16(b64 %b) {
  ret b64 %b
}

define b64 @src_double_0(b64 %b) {
  %ext = bitextract double, b64 %b, i32 0
  %ins = bitinsert b64 %b, double %ext, i32 0
  ret b64 %ins
}

define b64 @tgt_double_0(b64 %b) {
  ret b64 %b
}

define b128 @src_double_16(b128 %b) {
  %ext = bitextract double, b128 %b, i32 16
  %ins = bitinsert b128 %b, double %ext, i32 16
  ret b128 %ins
}

define b128 @tgt_double_16(b128 %b) {
  ret b128 %b
}

define b64 @src_b16_0(b64 %b) {
  %ext = bitextract b16, b64 %b, i32 0
  %ins = bitinsert b64 %b, b16 %ext, i32 0
  ret b64 %ins
}

define b64 @tgt_b16_0(b64 %b) {
  ret b64 %b
}

define b64 @src_b16_16(b64 %b) {
  %ext = bitextract b16, b64 %b, i32 16
  %ins = bitinsert b64 %b, b16 %ext, i32 16
  ret b64 %ins
}

define b64 @tgt_b16_16(b64 %b) {
  ret b64 %b
}
