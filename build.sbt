name := "scala dummy"
organization := "com.streese"

version := "0.1.0"
scalaVersion := "2.13.3"

scalacOptions ++= List(
  "-Ywarn-unused"
)

libraryDependencies ++= Seq(
  "org.scalameta" %% "munit" % "0.7.11" % Test
)

testFrameworks += new TestFramework("munit.Framework")
