; A byte copy keeps the provenance of pointer bytes. A copy through an
; integer does not.

define void @src(ptr %m, ptr %n) {
  %x = load b64, ptr %m
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  store b64 %x, ptr %n
  ret void
}

define void @tgt(ptr %m, ptr %n) {
  %x = load b64, ptr %m
  %i = bitcast b64 %x to i64
  %c = icmp eq i64 %i, 0
  br i1 %c, label %a, label %a
a:
  %r = bitcast i64 %i to b64
  store b64 %r, ptr %n
  ret void
}

; ERROR: Mismatch in memory
