dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

# substrings("Howdy partner, sit down! How's it going?", dictionary)
#  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, 
#  "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(string,dictionary)
  # create a a hash
  string_array = string.split(" ")
  p string_array
  
  hash_array = string_array.reduce(Hash.new(0)) do |word, count|
    word[count] = 0
    word
  end

p hash_array
  # key for hash is  your word or words
  # value for hash is the number of times that word shows up in the dictionary
  # needs to search for both the word and any substrings -> below returns 1 for below and low
  # take the word and scan dictionary
  # for a string = "howdy how", string.scan(/how/).length returns 2
  # array.map {|str| str.count(‘a’) }
  
end

substrings("howdy how",dictionary)

