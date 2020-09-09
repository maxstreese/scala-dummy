name := "scala dummy"
organization := "com.streese"

version := "0.1.0"
scalaVersion := "2.13.3"

scalacOptions ++= List(
  "-Ywarn-unused"
)

libraryDependencies ++= Seq(
  "com.github.andyglow" %% "scala-jsonschema" % "0.2.8",
  "org.scalatest"       %% "scalatest"        % "3.2.0" % "test"
)
