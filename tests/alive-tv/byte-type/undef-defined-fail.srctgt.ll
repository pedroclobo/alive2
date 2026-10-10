; A defined byte can't be replaced with undef.

define b8 @src() {
  ret b8 0
}

define b8 @tgt() {
  ret b8 undef
}

; ERROR: Target's return value is more undefined
