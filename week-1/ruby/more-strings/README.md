# More Strings
---

More exercises to work with strings.


#### Given a string, change all characters to uppercase

**Details**
  - Input: "Change me!"

**Solution**
```ruby
puts "Change me!".upcase
```

---

#### Given a string, split it by words (on every space)

**Details**
  - Input: "I need to be split"

**Solution**
```ruby
puts "I need to be split".split
```

---

#### Print a newline special character between 2 sentences

**Details**
  - Input: "Hello there!", "How are you?"

**Solution**
```ruby
puts "Hello there!\nHow are you?"
```

---

#### Check if the string includes a specific word or not

**Details**
  - Input: "The mighty Ruby programming language"

**Solution**
```ruby
puts "The mighty Ruby programming language".include? 'Ruby'
```

---

#### Add your name to the correct place in the string

**Details**
  - Input: "My name is ."

**Solution**
```ruby
puts "My name is .".insert(11, 'John')
```

---

#### Replace all occurences of a substring with another

**Details**
  - Input: "I want to eat noodles! I just love noodles."

**Solution**
```ruby
puts "I want to eat noodles! I just love noodles.".gsub('noodles', 'ice cream')
```

---

#### Check if the string starts with "Help"

**Details**
  - Input: "Help! I'm in trouble!"

**Solution**
```ruby
puts "Help! I'm in trouble!".start_with? "Help"
```

---

#### Given a string, return a slice with just the last 5 characters

**Details**
  - Input: "Hey! Someone just stole my phone"

**Solution**
```ruby
puts "Hey! Someone just stole my phone"[-5..-1]
```

---

#### Given a string, add an extra space between each character

**Details**
  - Input: "I need some spaces"

**Solution**
```ruby
"I need some spaces".split('').join(' ')
```
