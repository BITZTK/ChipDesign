file://<WORKSPACE>/src/test/scala/SecondTest.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

presentation compiler configuration:
Scala version: 3.3.3
Classpath:
<HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.3.3/scala3-library_3-3.3.3.jar [exists ], <HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.12/scala-library-2.13.12.jar [exists ]
Options:



action parameters:
offset: 471
uri: file://<WORKSPACE>/src/test/scala/SecondTest.scala
text:
```scala
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

object SecondTest extends App {
    test(new Second) { c =>
        for (i <- 0 to 5) {
            c.io.in.poke(@@)
        }
    c.io.in.poke(0.U)     // 输入设为0
    c.clock.step(1)    // 时钟步进
    c.io.out.expect(0.U)  // 输出应当为0
    c.io.in.poke(1.U)     // 输入设为1
    c.clock.step(1)    // 时钟步进
    c.io.out.expect(1.U)  // 输出应当为1
    c.io.in.poke(2.U)     // 输入设为2
    c.clock.step(1)    // 时钟步进
    c.io.out.expect(2.U)  // 输出应当为2
  }
}
```



#### Error stacktrace:

```
scala.collection.LinearSeqOps.apply(LinearSeq.scala:131)
	scala.collection.LinearSeqOps.apply$(LinearSeq.scala:128)
	scala.collection.immutable.List.apply(List.scala:79)
	dotty.tools.dotc.util.Signatures$.countParams(Signatures.scala:501)
	dotty.tools.dotc.util.Signatures$.applyCallInfo(Signatures.scala:186)
	dotty.tools.dotc.util.Signatures$.computeSignatureHelp(Signatures.scala:94)
	dotty.tools.dotc.util.Signatures$.signatureHelp(Signatures.scala:63)
	scala.meta.internal.pc.MetalsSignatures$.signatures(MetalsSignatures.scala:17)
	scala.meta.internal.pc.SignatureHelpProvider$.signatureHelp(SignatureHelpProvider.scala:51)
	scala.meta.internal.pc.ScalaPresentationCompiler.signatureHelp$$anonfun$1(ScalaPresentationCompiler.scala:414)
```
#### Short summary: 

java.lang.IndexOutOfBoundsException: 0