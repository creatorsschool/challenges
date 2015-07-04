def make_acronym(val)
  return 'Not a string' unless val.is_a?(String)
  return 'Not letter' if !val.empty? && val !~ (/^([[:alpha:]]|\s)+$/)
  val.split.map{ |word| word[0].upcase }.join
end

p make_acronym("Hello codewarrior")
p make_acronym("")
p make_acronym("a42")
p make_acronym(42)
