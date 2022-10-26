require 'pry-byebug'
def caesar_cipher(text, shift)
    alphabet = [*('a'..'z')]
    new_word = []
    text.each_char do |char|
        char_index = alphabet.index(char)
        new_index = char_index + shift
        new_word << alphabet[new_index]
    end
    new_word.join
end

puts caesar_cipher("hello", 1)
