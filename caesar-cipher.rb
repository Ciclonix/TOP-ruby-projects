def ceasar_cipher(string, shift)
    new_string = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    string.each_char do |c|
        new_char = c.downcase

        #ignores everything except letters
        if alphabet.include? new_char
            i = alphabet.index(new_char) - shift
            i += alphabet.length if i < 0
            new_char = alphabet[i]
            #mantains the upper/lower case of the original character
            new_char.upcase! if c == c.upcase
        end

        new_string += new_char
    end
    
    return new_string
end