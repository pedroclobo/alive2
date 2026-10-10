; Byte values are frozen per bit.

define b8 @src_poison() {
  %f = freeze b8 poison
  ret b8 %f
}

define b8 @tgt_poison() {
  ret b8 0
}

define b64 @src_defined(b64 %x) {
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  %f = freeze b64 %x
  ret b64 %f
}

define b64 @tgt_defined(b64 %x) {
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  ret b64 %x
}

define ptr @src_ptr(ptr noundef %p) {
  %b = bitcast ptr %p to b64
  %f = freeze b64 %b
  %r = bitcast b64 %f to ptr
  ret ptr %r
}

define ptr @tgt_ptr(ptr noundef %p) {
  ret ptr %p
}

define i16 @src_partial() {
  %b = bitinsert b16 poison, i8 1, i32 8
  %f = freeze b16 %b
  %e = bitextract i8, b16 %f, i32 8
  %r = zext i8 %e to i16
  ret i16 %r
}

define i16 @tgt_partial() {
  ret i16 1
}
