target datalayout = "e-p:64:64:64"

define i32 @src() {
  %p = alloca i32
  %res = call i32 @memcmp(ptr %p, ptr %p, i64 4) ; ub
  ret i32 %res
}

define i32 @tgt() {
  unreachable
}

; ERROR: Source is more defined than target

declare i32 @memcmp(ptr captures(none), ptr captures(none), i64)
