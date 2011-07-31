extend = (child, supertype) ->
  child:: = supertype::
Bat = (name, wingspan) ->
  Mammal.call this, name
  @wingspan = wingspan
module "About Prototypal Inheritance (topics/about_prototypal_inheritance.js)"
Mammal = (name) ->
  @name = name

Mammal:: = sayHi: ->
  "Hello, my name is " + @name

test "defining a 'class'", ->
  eric = new Mammal("Eric")
  equals eric.sayHi(), __, "what will Eric say?"

Mammal::favouriteSaying = ->
  @name + "'s favourite saying is " + @sayHi()

test "more functions", ->
  bobby = new Mammal("Bobby")
  equals bobby.favouriteSaying(), __, "what is Bobby's favourite saying?"

test "calling functions added to a prototype after an object was created", ->
  paul = new Mammal("Paul")
  Mammal::numberOfLettersInName = ->
    @name.length
  
  equals paul.numberOfLettersInName(), __, "how long is Paul's name?"

extend Bat, Mammal
test "Inheritance", ->
  lenny = new Bat("Lenny", "1.5m")
  equals lenny.sayHi(), __, "what does Lenny say?"
  equals lenny.wingspan, __, "what is Lenny's wingspan?"
