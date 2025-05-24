define b8 @test1() {
  %aff = alloca b8
  %1 = load b8, ptr %aff
  ret b8 %1
}

define b32 @test2() {
  %aff = alloca b32
  %1 = load b32, ptr %aff
  ret b32 %1
}

define b64 @test3() {
  %aff = alloca b64
  %1 = load b64, ptr %aff
  ret b64 %1
}
