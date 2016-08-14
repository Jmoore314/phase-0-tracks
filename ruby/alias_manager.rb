#split first and last names
#reverse first and last names
#method for when vowels occur in strings to advance by 1 in that string
#method for consonants to occur to advance them by 1
#join the strings back together and capitalize where appropriate
#store all items in a hash
#print message of all items in a hash

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
    consonants = "bcdfghjklmnpqrstvwxyz"
    letter_downcase = letter.downcase
	if consonants.include?(letter_downcase)
		consonant(letter_downcase).upcase
	else
		vowel(letter_downcase).upcase
	end
end

#upcase("A")
#upcase("B")

def special_char(char)
    char
end

#special_char("!")

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
			elsif consonants.upcase.include?(char) || vowels.upcase.include?(char) 
				upcase(char)
			else
				special_char(char)
			end
		}
	}
	join(new_name)
end

#cypher("John Moore")
#cypher("Felicia Torres")
#cypher("JoHn MoOrE")
#cypher("FeLiCiA ToRrEs")
#cypher("De'Marco")

puts "Welcome to Spys-Я-Us! \nPlease enter your real name to recieve your very own spy name! \nWhen you are done, just type \"Quit\""
name = ""
spy_names = {}

while name.downcase != "quit"
    name = gets.chomp
    break if name == "quit"
    puts "I've translated your name to be \'" + cypher(name) + "\'"
    symbol_name = name.to_sym
    spy_names[symbol_name] = cypher(name)
end

if name == "quit"
    puts "The following are all of the names entered into our database:"
    spy_names.each { |key_name, translated_name|
        puts "\'#{key_name}\' is known as \'#{translated_name}\'"
    }
end





