error id: file://<WORKSPACE>/src/test/scala/SecondTest.scala:[563..563) in Input.VirtualFile("file://<WORKSPACE>/src/test/scala/SecondTest.scala", "package xCache

// 导标准库
import chisel3._
import chiseltest._
import circt.stage.{ChiselStage, FirtoolOption}
import org.chipsalliance.cde.config._
import chisel3.stage.ChiselGeneratorAnnotation
import xs.utils.{ChiselDB, FileRegisters}
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.tilelink._
import org.scalatest.flatspec.AnyFlatSpec

object SecondTest extends App {
    test(new Second) { c =>
        for (i <- 0 to 5) {
            c.io.in.poke(i.U)
            // c.clock.step(1)
            c.io.out.expect(i.U)
        }
  }
}

class ")
file://<WORKSPACE>/src/test/scala/SecondTest.scala
file://<WORKSPACE>/src/test/scala/SecondTest.scala:24: error: expected identifier; obtained eof
class 
      ^
#### Short summary: 

expected identifier; obtained eof