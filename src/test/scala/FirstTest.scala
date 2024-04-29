package xCache

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

object FirstTest extends App {
  (new ChiselStage).execute(Array("--target", "verilog") ++ args, Seq(ChiselGeneratorAnnotation(() => new Passthrough)))

  ChiselDB.init(false)
  //  ChiselDB.addToFileRegisters
  FileRegisters.write("./build")
}