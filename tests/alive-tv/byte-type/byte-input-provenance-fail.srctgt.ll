; Byte arguments may hold pointer bytes, so the target cannot strip their
; provenance through an integer.

define b64 @src(b64 %x) {
  %p = bitcast b64 %x to ptr
  %v = load i8, ptr %p
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  ret b64 %x
}

define b64 @tgt(b64 %x) {
  %p = bitcast b64 %x to ptr
  %v = load i8, ptr %p
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  %r = bitcast i64 %i to b64
  ret b64 %r
}

; ERROR: Value mismatch
