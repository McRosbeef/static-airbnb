sentence = "WELCOME TO THE LIVECODE"

def encrypt(sentence)
  letters = sentence.split("")
  alphabet = ("A".."Z").to_a
  vowels = ["a","e","i","o","u"].upcase
  letters_index = letters.map do |letter|
    if alphabet.index(letter)
    new_index = alphabet.index(letter) - 3
    alphabet[new_index]
    else
      " "
    end
  end
  return letters_index.join
end



encrypt(sentence) do |vowel|

  "*"
end
