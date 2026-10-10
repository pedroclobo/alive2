; A local pointer passed in a byte argument escapes, so a later call may
; write to it.

declare void @f(b64)
declare ptr @g()

define i8 @src() {
  %p = alloca i8
  store i8 1, ptr %p
  %b = bitcast ptr %p to b64
  call void @f(b64 %b)
  %q = call ptr @g()
  store i8 2, ptr %q
  %v = load i8, ptr %p
  ret i8 %v
}

define i8 @tgt() {
  %p = alloca i8
  store i8 1, ptr %p
  %b = bitcast ptr %p to b64
  call void @f(b64 %b)
  %q = call ptr @g()
  store i8 2, ptr %q
  ret i8 1
}

; ERROR: Value mismatch
