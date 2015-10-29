#first create a hash that maps each letter of the alphabet to its corresponding letter after the shift

def cipher_hash(shift)
    alphabet = ("a".."z").to_a
    alphabet_shift = Array.new
    alphabet.each { |letter|
        alphabet_shift << alphabet[alphabet.index(letter) - shift]
    }
    zip = alphabet.zip(alphabet_shift)
    cipher = Hash[zip] #creates hash from array of array pairs
    return cipher
end

def caesar_cipher(string, shift)
    ciphered_string = ""
    hash = cipher_hash(shift)
    for i in 0..string.length do
        current_letter = string[i].to_s
        if current_letter.match(/[[:blank:]]/).nil? == false #NOT nil, i.e. there's a match for blank
            ciphered_string[i] = " "
        elsif current_letter.match(/[[:punct:]]/).nil? == false
            ciphered_string[i] = current_letter
        elsif current_letter.match(/[[:upper:]]/).nil? == false
            lookup = hash[current_letter.downcase].to_s
            ciphered_string[i] = lookup.upcase
        else
            lookup = hash[current_letter].to_s
            ciphered_string[i] = lookup
        end
    end
    return ciphered_string
end

puts "Enter a phrase."
user_input = gets.chomp
puts "Now enter the number of characters to shift."
shift_number = gets.chomp

puts caesar_cipher(user_input, shift_number.to_i).to_s

