declare ptr @f()

define ptr @src(ptr %p, b8 %b) {
  %ret = alloca ptr, i32 0
  store b8 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @tgt(ptr %p, b8 %b) {
  store b8 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}
