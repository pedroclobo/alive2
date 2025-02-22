@agg = constant { i8, b8, i8 } { i8 0, b8 7, i8 4 }

define i32 @test() {
  %1 = load b8, ptr @agg
  ret i32 0
}
