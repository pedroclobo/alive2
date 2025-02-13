; TEST-ARGS: -disable-undef-input
declare ptr @f()

define ptr @test1(ptr %p, b8 %b) {
  store b8 %b, ptr %p
  %call = call ptr @f()
  ret ptr %call
}

define ptr @test2(ptr %p, b8 %b) {
  store b8 %b, ptr %p
  %call = call ptr @f()
  store ptr null, ptr %p
  ret ptr %call
}
