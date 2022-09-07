def substrings(string, dictionary)
  
    string_array = string.downcase.split
    p "This is string array: #{string_array}"
    
    results_array = []
    for i in 0..(string_array.length-1)
        dictionary.each do |word|
            if string_array[i].include?(word)
                results_array.push(word)
            end
        end
    end
    p "This is results_array: #{results_array}"

    results_array.reduce(Hash.new(0)) do |result, string|
        result[string] += 1
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)