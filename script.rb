dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

# substrings("Howdy partner, sit down! How's it going?", dictionary)
#  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, 
#  "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(string,dictionary)

  #create an array with string split by spaces
  #run a filter with the dictionary array with include?, checking if each dictionary word is included
  #in the string.  Keep string as a string for now
  p string
  dictionary_array = dictionary.filter {|word| string.include? word}

  scan = string.scan(/(?=#{"how"})/).count
  p dictionary_array
  p scan

  hash_array = dictionary_array.reduce(Hash.new(0)) do |word, quantity|
    word[quantity] = string.scan(/(?=#{word})/).count
    word
  end

  p hash_array
  
end

substrings("howdy hotodg",dictionary)

