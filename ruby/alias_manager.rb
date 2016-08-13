#split first and last names
#reverse first and last names
#method for when vowels occur in strings to advance by 1 in that string
#method for consonants to occur to advance them by 1

def split(string)
	new_strings = string.split(' ')
	return new_strings.reverse
end

split("John Moore")
