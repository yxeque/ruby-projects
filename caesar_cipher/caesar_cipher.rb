def caesar_cipher(string, shift_factor = 3)
  alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  shift_factor = shift_factor.to_i
  shifted_alphabet = alphabet[shift_factor..-1] + alphabet[0...shift_factor]

  result = ""

  string.chars.each do |char|
    if char.match?(/[a-zA-Z]/)
      original_case = char.upcase == char  # Store original case (upper or lower)
      index = alphabet.index(char.downcase)  # Find index based on lowercase version
      new_char = shifted_alphabet[index]

      # Maintain original case using modulo operation
      new_char = (new_char.ord + 26 - 'a'.ord) % 26 + 'a'.ord if original_case
      new_char = new_char.chr
      new_char = new_char.upcase if original_case
      new_char = new_char.downcase unless original_case

      result += new_char
    else
      result += char  
    end
  end

  result  
end

puts caesar_cipher("Hello World!", 4)
puts caesar_cipher "Hey"
puts caesar_cipher "I love zebras", 2

