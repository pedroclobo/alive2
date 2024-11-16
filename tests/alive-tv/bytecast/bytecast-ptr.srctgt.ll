define ptr @src(ptr %p) {
  %v = load b64, ptr %p
  %c = bytecast b64 %v to ptr
  ret ptr %c
}

define ptr @f1(ptr %p) {
  %v = load ptr, ptr %p
  ret ptr %v
}
