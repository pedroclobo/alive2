; 32-bit pointers keep the queries tractable: byte to pointer casts observe
; the whole address.
target datalayout = "p:32:32"

define b32 @src_0(b32 %b) {
  %ext = bitextract ptr, b32 %b, i32 0
  %ins = bitinsert b32 %b, ptr %ext, i32 0
  ret b32 %ins
}

define b32 @tgt_0(b32 %b) {
  ret b32 %b
}

define b64 @src_16(b64 %b) {
  %ext = bitextract ptr, b64 %b, i32 16
  %ins = bitinsert b64 %b, ptr %ext, i32 16
  ret b64 %ins
}

define b64 @tgt_16(b64 %b) {
  ret b64 %b
}
