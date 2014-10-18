#!/usr/bin/ruby
# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"
alpha = ('a'..'z').to_a
Vowel = %w[a, e, i, o, u]
consonants = (alpha - Vowel).join


def pigatize(text)
  if starts_with_vowel.include(text[0])
  pigatized_text = text + "way"
elsif consonants.
  text[1,text.size] + (text[0]) + "ay"
  return pigatized_text
end

def starts_with_vowel(text)
  if Vowel.include (text[0])
  return true
else
  return false
end

loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0
  puts pigatize(text)
end
