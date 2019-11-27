
# this code is copied from the Nim homepage: https://nim-lang.org/
type
  Person = object
    name: string
    age: Natural # Ensures the age is positive

proc main() =
  let people = [
    Person(name: "John", age: 45),
    Person(name: "Kate", age: 30)
  ]

  let name = "bob"
  echo name
  echo people[0].name

main()

# this method is needed for the pretty-printing (nim-gdb) during debugging
# see: https://github.com/cooldome/Nim-gdb#known-limitations
proc nimDebugDoNotRemove() =
  type
    NimDebug = enum nimDebug
  echo repr(nimDebug)

nimDebugDoNotRemove()