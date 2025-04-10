dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]

def substrings(string,dictionary)
  p string
  dictionary_array = dictionary.filter {|word| string.downcase.include? word}
  p dictionary_array
  hash_array = {}
  dictionary_array.each { |word| hash_array[word] = string.downcase.scan(word).count }
  p hash_array
end

substrings("Howdy partner, sit down! How's it going?",dictionary)

