; Only the bytes that are poison in the source may be undef in the target.

define b16 @src() {
  %r = bitinsert b16 poison, i8 0, i32 8
  ret b16 %r
}

define b16 @tgt() {
  %r = bitinsert b16 undef, i8 0, i32 0
  ret b16 %r
}

; ERROR: Target's return value is more undefined
