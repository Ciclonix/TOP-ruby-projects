def substrings(string, dictionary)
    return "Error in string" unless string.is_a?(String)
    string.downcase!
    word_count = {}

    for word in dictionary
        return "Error in dictionary" unless word.is_a?(String)
        count = string.scan(word).length
        word_count[word] = count if count > 0
    end

    return word_count
end


# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("Howdy partner, sit down! How's it going?", dictionary)