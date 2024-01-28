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

(28-01-24)

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

## Project: Stock Picker

(28-01-24)

- By now I'm convinced that algorithms just aren't my thing. Again I referenced another community solution (the most liked one), because I could not figure out how to start this project. I can understand at least better than when I consulted Bard, but I honestly don't think I could've come up with the code below without looking up that solution, so that's my level of programming at that time of writing this.

```ruby
def stock_picker(prices)
  return nil if prices.empty?
  results = prices.each_with_index.to_a.combination(2).max_by do |buy_day, sell_day| # #each_with_index_.to_a > Create an array of arrays that contains the price and it's index (day) #> [17, 0], [3, 1], ...
  # .combination(2) > Generates all possible combination of 2 elements from the price-index pairs (I still don't get this)
  # .max_by > Iterates through buy_day and sell_day to find the pair that yields the maximum profit
    sell_day[0] - buy_day[0] # Subtracts buy price from sell price to calculate profit from each pair (Will loop until it finds the best pair) > [1, 4]
  end
  results.map {|price, days| days} # Extracts the days from the best pair [1, 4] for some reason Bard insists that the best pair is [7, 4] (wrong). TL;DR - I don't know how this works :3
end
```

## Project: Bubble Sort

(28-01-24)

- This was one of the easier to understand project. That being said I still didn't figure it all out completely on my own, though I think I'd be able to recreate this from memory more easily, than the other basic ruby algorithm projects here. This one also doesn't use any fancy premade ruby methods (which the project forbids).

```ruby
def bubble_sort(array)
  swapped = true # Initializes a flag that tracks whether a swap occurs in each
  while swapped # Continues looping until all swaps are true meaning the array is sorted
    swapped = false # Resets the flag for each iteration
    (array.length - 1).times do |i| # Iterates `array.length - 1` times (number of total elements in the array) minus one - because the largest element in a bubble sort is already in its correct place (It just happens, I don't know how either)
      if array[i] > array[i + 1] # Compares current element (array[i]) to the next element (array[i + 1])
        # If current element is greater than the next element they are in the wrong order, meaning they need to swap positions
        array[i], array[i + 1] = array[i + 1], array[i] # Swaps position using simultaneous assignment (Just found out about this), Basically the same as:
        # array[i] = array[i + 1] and
        # array[i + 1] = array[i]
        swapped = true
      end
    end
  end
  array
end
```
