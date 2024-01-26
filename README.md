# Basic Ruby Projects

## Project: Caesar Cipher

(26-01-24)

- I though this one would be easy without any outside help (mainly Bard, xd), but no. I think I had the right idea starting with this:

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
