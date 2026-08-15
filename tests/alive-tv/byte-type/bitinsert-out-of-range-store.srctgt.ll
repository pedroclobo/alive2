; An out-of-range bitinsert yields poison, which must survive a store: the
; scalar non-poison flag of a byte value is dropped when it is stored.

; ERROR: Target is more poisonous than source

define i8 @src() {
  ret i8 0
}

define i8 @tgt() {
  %r = bitinsert b32 0, i8 1, i32 32
  %a = alloca i32, align 4
  store b32 %r, ptr %a, align 4
  %v = load i8, ptr %a, align 4
  ret i8 %v
}
