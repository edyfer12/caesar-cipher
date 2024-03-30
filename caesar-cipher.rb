def caesar_cipher(string, shift)
    #Create an array that will used to split all the elements which are letters
    arr = string.split("")

    #Create an array that will be used to contain all capital letters A to Z
    capital_letters = ('A'..'Z').to_a
    #Create an array that will be used to contain all lowercase letters a to z
    lowercase_letters = ('a'..'z').to_a
    
    #Use the map method for the arr array that will be used to shift each letter by chosen number
    #and store into encrypt variable that will encrypt each character
    encrypt = arr.map do |letter|
        #Check if the letter is the lowercase by checking if the current letter is in the array of lowercase letters
        if lowercase_letters.include?(letter)
            #Add the index of the current letter by shift of selected number modulus of 26
            letter = lowercase_letters[(lowercase_letters.index(letter) + shift) % 26] 
        #Check if the letter is capital by checking the current letter is in the array of capital letters
        elsif capital_letters.include?(letter)
            #Add the index of the current letter by shift of selected number modulus of 26
            letter = capital_letters[(capital_letters.index(letter) + shift) % 26] 
        #If it is not a letter just leave it as it is
        else
            letter = letter
        end
    end

    #Join all the letters in the encrypted array
    encrypted_word = encrypt.join
end

p caesar_cipher("What a string!", 5)