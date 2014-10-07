=begin
Assignment 20

Extend Ruby's String class to have a "pigatize" method that will turn any string into pig latin.

* hardest part will be doing it for each word in the string
* Hint: get it working with one word first, then for multiple words, consider what you already know for ways to break up a phrase by spaces, then look at the Array.collect method.
=end

alpha = ('a'..'z').to_a
starts_with_vowel = %w[a, e, i, o, u]
consonants = (alpha - starts_with_vowel).join


def pigatize(text)
  if starts_with_vowel.include(text[0])
    text + "way"
  elsif
  end
  return pigatized_text
end

def starts_with_vowel(text)

  return true
end

loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0
  puts pigatize(text)
end
