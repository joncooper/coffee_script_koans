# CoffeeScript Koans Outline

## JaredCarroll's Presentation Outline

### Before (JavaScript Examples)

- example function declaration (square)
- example array literal
- example loop pushing squares to an array

### After (CoffeeScript Versions of the Preceding)

### Basics

- variable setting
- nested hashes created via literal (what do we call nested hashes?)
- one line creation of hash
- array literal
- range literal
- negative range literal
- exclusive range (i.e. not including endpoint, '...')
- console.log
- toString()

### Functions

- defining a function
- default arguments
- varargs
- lambdas (make an adder)
- functions as parameters
- creating a class with an accessor
- something that doesn't compile (User/newUser example)
- calling into jQuery from CoffeeScript
- taskView viewModel that logs on an onChange event

### Conditional Logic

- assignment with if .. then .. else
- or= default
- unless
- is / isnt
- in
- dual inequality (a < x < b)

### Existential Operator

- ?  (.nil?)
- ?. (try)
- console.log 0 || 'yeah' => 'yeah'
- x = 0; console.log x ? 'yeah' => 0

### Looping and List Comprehensions

- x for x in range
- x * 2 for x in range
- x for x in range when x % 2 is 0
- x for x in range by 2
- console.log for x in negative range
- for key, value of object
- for own key, value of object
- while
- until

### Strings

- interpolation
- multiline strings
- slicing with ranges, forward
- slicing with ranges, backward (one ended range)

### Destructuring Assignment

- set a key = value from a nested hash (head scratcher)
- assign to array
- assign to varargs to do head/tail

### Object Model

- defining a class
- defining a constructor
- defining instance methods
- defining class methods
- exending a class
- prototype accessor (::)
- instantiating an object
- calling an instance method

## The Little Book on CoffeeScript Outline

### Syntax

- comments
- multiline comments
- variables are scoped
- creating global variables
- function declaration
- function arguments
- varargs
- function invocation
- function context (fat vs skinny arrow)
- object literals and array definition
- flow control
  - if then else
  - unless
- operators
  - is
  - == and != become === and !==
- string interpolation
- loops and comprehensions
- arrays and ranges
- aliases and the existential operator
  - @ means this
  - :: means prototype
  - ? is a bag of hammers

### Classes

- class keyword
- constructors
- constructor shorthand for instance properties
- instance properties
- demonstration of function context
- class properties
- inheritance and super
- prototypal inheritance
- implementing mixins

### Idioms

- each
- map
- select
- includes
- min/max
- multiple arguments
- and/or
- destructuring assignments
- external libraries



