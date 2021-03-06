=begin
Assignment 20

Extend Ruby's String class to have a "pigatize" method that will turn any string into pig latin.

* hardest part will be doing it for each word in the string
* Hint: get it working with one word first, then for multiple words, consider what you already know for ways to break up a phrase by spaces, then look at the Array.collect method.
=end

ALPHA = ('a'..'z').to_a
VOWEL = %w[a e i o u]
CONSONANTS = (ALPHA - VOWEL).join



def pigatize(text)
  if starts_with_vowel(text)
    pigatized_text = text + "way"
  else
    pigatized_text = text[1,text.size] + (text[0]) + "ay"
  end
  return pigatized_text
end

def starts_with_vowel(text)
  # puts VOWEL.inspect
  # puts text[0]
  if VOWEL.include? (text[0].downcase)
    # puts "yes its a vowel"
    return true
  else
    puts "no its a vowel"
    return false
  end
end

loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0
  puts pigatize(text)
  puts "Press enter to exit"


end
