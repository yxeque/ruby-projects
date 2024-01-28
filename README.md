# Basic Ruby Projects

## Project: Caesar Cipher

(26-01-24)

- I thought this one would be easy without any outside help (mainly Bard, xd), but no. I think I had the right idea starting with this:

```ruby
def caesar_cipher(string, shift_factor)
  alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  shift_factor = shift_factor.to_i

  string.chars.each do |char|
    char.ord + shift_factor # I didn't know how to add up to this
  end

  string
end

```

- After that attempt I was greatly carried by Bard. I would say I still learned a lot through this project (I think). Mainly this line of code `shifted_alphabet = alphabet[shift_factor..-1] + alphabet[0...shift_factor]` which showcases the power of string slicing, or something like that. Again, I don't fully grasp everything yet, but hey it works, and I feel like making progress. Regardless, good job me :3

## Project: Sub Strings

- I was definitely lost when attempting this project. Again, I thought it would be easy, but even with Bard (which gave me too complicated of an answer) it was difficult to figure it out.

- It was only until I looked at the community solutions (:3) that thing were much clearer. The answer was my the `#scan` method all along. I knew there'd be an easier ruby method for that instead of doing complicated loops. So I arrived to this answer, which I'll try to explain as best as I could.

```ruby
def substrings(text, dictionary)
  text = text.downcase # Make text case-insensitive
  substring_counts = Hash.new(0) # Create new hash that stores count of each substring found

  dictionary.each do |substring| # Iterate over the dictionary hash
    substring_counts[substring] += text.scan(substring).size # Check if text matches substring (contents of the dictionary). If yes, add to the count
  end

  substring_counts # Returns hash containing the count of each substring found in the given text
end
```
