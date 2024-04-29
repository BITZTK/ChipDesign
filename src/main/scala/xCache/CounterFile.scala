package xCache

import chisel3._
import chisel3.util._

class CounterFile extends Module {
  val io = IO(new Bundle {
    val out1 = Output(UInt(4.W))
    val out2 = Output(UInt(1.W))
  })
  private val counter = Counter(true.B, 1)
  io.out1 := counter._1
  io.out2 := counter._2
}