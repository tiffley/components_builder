name := "MyScalaProject"
version := "1.0"
scalaVersion := "2.13.8"

// Define the main class (change this according to your main class name)
mainClass in Compile := Some("HelloWorld")

// Add your Scala file to be compiled
Compile / sources += file("/app/test.scala")
