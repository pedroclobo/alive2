; Sub-byte inserts are not supported yet and yield poison, which must survive a
; store.

; ERROR: Target is more poisonous than source

define i8 @src() {
  ret i8 0
}

define i8 @tgt() {
  %r = bitinsert b32 0, i4 1, i32 0
  %a = alloca i32, align 4
  store b32 %r, ptr %a, align 4
  %v = load i8, ptr %a, align 4
  ret i8 %v
}
