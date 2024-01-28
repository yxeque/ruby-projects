def substrings(text, dictionary)
  text = text.downcase
  substring_counts = Hash.new(0)

  dictionary.each do |substring|
    substring_counts[substring] += text.scan(substring).size
  end

  substring_counts
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
