
def substrings(text, dictionary)
  text = text.downcase
  substring_counts = {}

  dictionary.each do |substring|
    index = 0
    count = 0

    while index < text.length
      index = text.index(substring, index)
      break if index.nil?
      count += 1
      index += substring.length
    end

    substring_counts[substring] = count if count > 0
  end

  return substring_counts
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
