package com.streese.scala.dummy

import com.github.andyglow.json.JsonFormatter
import com.github.andyglow.jsonschema.AsValue
import json._

object Main extends App {

  case class Person(name: String, age: Option[Int])

  val schema = JsonFormatter.format(AsValue.schema(Json.schema[Person], json.schema.Version.Draft07("Person")))

  println(schema)

  def jsonSchema[T](id: String) = {
    // JsonFormatter.format(AsValue.schema(Json.schema[T], json.schema.Version.Draft07(id)))
  }

}
