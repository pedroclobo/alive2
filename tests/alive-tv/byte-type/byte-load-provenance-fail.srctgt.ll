; Loaded bytes keep the provenance of their pointer bytes, so the target
; cannot strip it through an integer.

define b64 @src(ptr %m) {
  %x = load b64, ptr %m
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  ret b64 %x
}

define b64 @tgt(ptr %m) {
  %x = load b64, ptr %m
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  %r = bitcast i64 %i to b64
  ret b64 %r
}

; ERROR: Value mismatch
