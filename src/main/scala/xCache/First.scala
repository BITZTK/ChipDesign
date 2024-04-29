package xCache

import chisel3._

class Passthrough extends Module{
    val io=IO(new Bundle{
        val in=Input(UInt(4.W))
        val out=Output(UInt(4.W))
    })
    val regOut = RegNext(io.in)
    io.out := regOut
}