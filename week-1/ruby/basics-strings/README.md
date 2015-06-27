# Basic Strings
---

Exercises to work with strings.

#### Description

Write strings:
1. Use double quotes
2. Use single quotes
3. Add/concat strings
4. String length
5. Reverse a string
6. Multiline string
7. Interpolation


#### Solutions:

1.
```ruby
puts "This is a string with double quotes"
```

2.
```ruby
puts 'This is a string with single quotes'
```

3.
```ruby
puts "We can add strings up " + "and keep adding" + " until we are done"
```

4.
```ruby
puts "We can ask for the total number of characters on a string".length
```

5.
```ruby
puts "We can ask a string to reverse its characters".reverse
```

6.
```ruby
puts %q(
  This is a
  multiline string!
  WOW
)
```

7.
```ruby
someValue = 42
puts "We can interpolate values like this: #{someValue}"
```
