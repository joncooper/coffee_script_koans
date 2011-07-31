module "About Regular Expressions (topics/about_regular_expressions.js)"
test "exec", ->
  numberFinder = /(\d).*(\d)/
  results = numberFinder.exec("what if 6 turned out to be 9?")
  ok results.equalTo([ __, __, __ ]), "what is the value of results?"

test "test", ->
  containsSelect = /select/.test("  select * from users ")
  equals containsSelect, __, "does the string provided contain \"select\"?"

test "match", ->
  matches = "what if 6 turned out to be 9?".match(/(\d)/g)
  ok matches.equalTo([ __, __ ]), "what is the value of matches?"

test "replace", ->
  pie = "apple pie".replace("apple", "strawberry")
  equals pie, __, "what is the value of pie?"
  pie = "what if 6 turned out to be 9?".replace(/\d/g, (number) ->
    map = 
      6: "six"
      9: "nine"
    
    map[number]
  )
  equals pie, __, "what is the value of pie?"
