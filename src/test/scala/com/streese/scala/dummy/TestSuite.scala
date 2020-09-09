package com.streese.scala.dummy

import org.scalatest.freespec.AnyFreeSpec
import org.scalatest.matchers.should.Matchers

class TestSuite extends AnyFreeSpec with Matchers {
  "This should pass" in {
    1 shouldBe 1
  }
}
