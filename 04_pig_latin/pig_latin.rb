def vowel?(str)
  ["a","e","i","o","u"].include?(str)
end

def translate_word(word)
  first_vowel_idx = word.chars.find_index{|c| vowel?(c)}
  leading_consonants = word[0..first_vowel_idx]
  rest_of_the_word = word[first_vowel_idx..-1]
  rest_of_the_word + leading_consonants + 'ay'
end

def translate(sentence)
  words = sentence.split(" ")
  words.map{|w| translate_word(w) }.join(" ")
end
