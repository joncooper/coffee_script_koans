# extend = (child, supertype) ->
#   child:: = supertype::
# Bat = (name, wingspan) ->
#   Mammal.call this, name
#   @wingspan = wingspan

module "About Prototypal Inheritance (topics/about_prototypal_inheritance.js)"

class Mammal
  constructor: (@name) ->

  sayHi: ->
    "Hello, my name is " + @name

test "defining a 'class'", ->
  eric = new Mammal("Eric")
  equals eric.sayHi(), "Hello, my name is Eric", "what will Eric say?"

Mammal::favouriteSaying = ->
  @name + "'s favourite saying is " + @sayHi()

test "more functions", ->
  bobby = new Mammal("Bobby")
  equals bobby.favouriteSaying(), "Bobby's favourite saying is Hello, my name is Bobby", "what is Bobby's favourite saying?"

test "calling functions added to a prototype after an object was created", ->
  paul = new Mammal("Paul")
  Mammal::numberOfLettersInName = ->
    @name.length

  equals paul.numberOfLettersInName(), 4, "how long is Paul's name?"

class Bat extends Mammal
  constructor: (@name, @wingspan) ->
    super @name

test "Inheritance", ->
  lenny = new Bat("Lenny", "1.5m")
  equals lenny.sayHi(), "Hello, my name is Lenny", "what does Lenny say?"
  equals lenny.wingspan, "1.5m", "what is Lenny's wingspan?"
