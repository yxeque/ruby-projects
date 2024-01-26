def caesar_cipher(string, shift_factor)
  alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  shift_factor = shift_factor.to_i
  shifted_alphabet = alphabet[shift_factor..-1] + alphabet[0...shift_factor]

  result = ""

  string.chars.each do |char|
    if char.match?(/[a-zA-Z]/)
      index = alphabet.index(char)
      new_char = shifted_alphabet[index]
      result += new_char  
    else
      result += char  
    end
  end

  result  
end

puts caesar_cipher("Hello World!", 4)  

