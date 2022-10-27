def caesar_cipher(text, shift)
    new_word = ""
    text.each_char do |char|
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            new_ascii = char.ord + shift
            new_ascii -= 26 if (new_ascii > 90 && char.ord <= 90) || new_ascii > 122
            new_word << new_ascii.chr
        else
            new_word << char
        end
    end
    new_word
end

puts caesar_cipher("What a string!", 5)
