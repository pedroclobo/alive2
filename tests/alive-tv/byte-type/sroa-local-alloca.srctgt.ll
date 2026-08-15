; TEST-ARGS: -disable-undef-input
declare ptr @f()

define ptr @src_test1(ptr %p, b8 %b) {
  %ret = alloca ptr, i32 0
  store b8 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @tgt_test1(ptr %p, b8 %b) {
  store b8 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @src_test2(ptr %p, b8 %b) {
  %retval1 = alloca ptr
  store b8 %b, ptr %p
  %call = call ptr @f()
  store ptr null, ptr %p
  ret ptr %call
}

define ptr @tgt_test2(ptr %p, b8 %b) {
  store b8 %b, ptr %p
  %call = call ptr @f()
  store ptr null, ptr %p
  ret ptr %call
}
