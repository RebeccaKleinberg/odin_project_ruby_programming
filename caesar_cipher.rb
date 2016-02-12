def caesar_cipher(phrase, offset)
  alphabet_lowercase = ('a'..'z').to_a
  alphabet_uppercase = ('A'..'Z').to_a
  new_phrase = ""
  split_phrase = phrase.split("")
  split_phrase.each_with_index do |letter, i|
    if alphabet_lowercase.include?(letter)
        alpha_index = alphabet_lowercase.index(split_phrase[i])
      if alpha_index + offset < 26
          new_phrase << alphabet_lowercase[alpha_index + offset]
      else
          new_phrase << alphabet_lowercase[(alpha_index + offset) - 26]
      end
    elsif alphabet_uppercase.include?(letter)
      alpha_index = alphabet_uppercase.index(split_phrase[i])
      if alpha_index + offset < 26
          new_phrase << alphabet_uppercase[alpha_index + offset]
      else
          new_phrase << alphabet_uppercase[(alpha_index + offset) - 26]
      end
    else
      new_phrase << letter
    end
  end
  puts new_phrase
end

caesar_cipher("What a string!", 5)
#Bmfy f xywnsl! changes here
