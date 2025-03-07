declare ptr @f()

define ptr @test1(ptr %p, b8 %b) {
  %ret = alloca ptr
  store b8 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @test2(b8 %b, ptr %ptr) {
  %alloca = alloca b8
  store b8 %b, ptr %ptr, align 1
  %call = call ptr @f()
  store ptr null, ptr %ptr
  ret ptr %call
}

define ptr @test3(ptr %p, b64 %b) {
  %ret = alloca ptr
  store b64 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @test4(b64 %b, ptr %ptr) {
  %alloca = alloca b64
  store b64 %b, ptr %ptr, align 1
  %call = call ptr @f()
  store ptr null, ptr %ptr
  ret ptr %call
}
