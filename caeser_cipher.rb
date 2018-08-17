def caesar_cipher(message_to_encrypt, shift_factor)
    words = message_to_encrypt.split
    words.map! do |word|
        characters = word.chars
        characters.map! do |character|
            if character =~ /[[:alpha:]]/
                shifted_character = character.ord + shift_factor
                if character == character.upcase
                    ('A'.ord + (shifted_character - 'A'.ord) % 26).chr
                else
                    ('a'.ord + (shifted_character - 'a'.ord) % 26).chr
                end
            else
                character
            end  
        end
        characters.join
    end
    return encrypted_message = words.join(' ')      
end

puts caesar_cipher('Hello, my friend!', 20)

#need to fix for whitespace. two splits