dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,dictionary)
  frequencies = Hash.new(0)
  words = string.split(" ") #Spliting the string into words.
  #Comparing each word in the string with the words in the dictionary.
  words.each do |x|
    dictionary.each do |y|
      if x.downcase.include? y
        frequencies[y] += 1   #if the word in the string matches the word in the dictionary, increment the frequency by 1.
      end
    end
  end
  return frequencies
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?",dictionary)
