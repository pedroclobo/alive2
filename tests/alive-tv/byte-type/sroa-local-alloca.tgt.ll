declare ptr @f()

define ptr @test1(ptr %p, b8 %b) {
  store b8 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @test2(b8 %b, ptr %ptr) {
  store b8 %b, ptr %ptr
  %call = call ptr @f()
  store ptr null, ptr %ptr
  ret ptr %call
}

define ptr @test3(ptr %p, b64 %b) {
  store b64 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @test4(b64 %b, ptr %ptr) {
  store b64 %b, ptr %ptr
  %call = call ptr @f()
  store ptr null, ptr %ptr
  ret ptr %call
}
