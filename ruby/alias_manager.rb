#split first and last names
#reverse first and last names
#method for when vowels occur in strings to advance by 1 in that string
#method for consonants to occur to advance them by 1
#join the strings back together and capitalize

def split_reverse(string)
	new_strings = string.split(' ')
	return new_strings.reverse
end

#split_reverese("John Moore")

def vowel(letter)
    vowels = "aeiou"
	x = vowels.index(letter)
	x += 1
	if x == 5
		x = 0
	end
	letter=vowels[x]
end

#vowel("a")
#vowel("b")

def consonant(letter)
    consonants = "bcdfghjklmnpqrstvwxyz"
	x = consonants.index(letter)
	x += 1
	if x == 21
		x = 0
	end
	letter=consonants[x]
end

#consonant("a")
#consonant("b")

def upcase(letter)
	consonants = "BCDFGHJKLMNPQRSTVWXYZ"
    vowels = "AEIOU"
    letter_downcase = letter.downcase
	if consonants.include?(letter)
		consonant(letter_downcase).upcase
	else
		vowel(letter_downcase).upcase
	end
end

#upcase("A")
#upcase("B")

def join(array)
    joining = array.map! { |name|
        name.join('')
    }
    return joining.join(' ')
end

#join([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]])

def cypher(name)
    consonants = "bcdfghjklmnpqrstvwxyz"
    vowels = "aeiou"
	new_name = split_reverse(name).map! { |name| 
		name.chars.map! { |char| 
			if consonants.include?(char)
			 	consonant(char)
			elsif vowels.include?(char) 
				vowel(char)
			else 
				upcase(char)
			end
		}
	}
	join(new_name)
end

#cypher("John Moore")
#cypher("Felicia Torres")
#cypher("JoHn MoOrE")
#cypher("FeLiCiA ToRrEs")

puts "Welcome to Spys-Я-Us! \nPlease enter your real name to recieve your very own spy name!"
name = gets.chomp

cypher(name)


