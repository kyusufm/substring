def substring(word, dict)
    result = Hash.new(0)

    word_downcased = word.downcase

    # iterate each word in dictionary
    dict.each do |dict_word|
        dict_word_downcased = dict_word.downcase

        # Find all occurrences of the dictionary word in the input text
        matches = word_downcased.scan(dict_word_downcased)

        if word_downcased.include?(dict_word_downcased)
            result[dict_word] += matches.length unless matches.empty?
        end
    end
    result
end

# Example dictionary
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

# Example usage
puts substring("Howdy partner, sit down! How's it going?", dictionary)  # => { "below" => 1, "low" => 1 }