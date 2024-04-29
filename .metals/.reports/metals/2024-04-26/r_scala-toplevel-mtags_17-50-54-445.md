error id: file://<WORKSPACE>/src/main/scala/xCache/Second.scala:[221..221) in Input.VirtualFile("file://<WORKSPACE>/src/main/scala/xCache/Second.scala", "package xCache

import chisel3._
import chisel3.util._

class Second extends Module {
    val io = IO(new Bundle {
        val in = Input(UInt(4.W))
        val out = Output(UInt(4.W))
    })
    io.out := io.in
}

class ")
file://<WORKSPACE>/src/main/scala/xCache/Second.scala
file://<WORKSPACE>/src/main/scala/xCache/Second.scala:14: error: expected identifier; obtained eof
class 
      ^
#### Short summary: 

expected identifier; obtained eof