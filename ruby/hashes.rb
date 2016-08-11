#define a method for entering informtion into a hash

#ask for user information
#Name, 
#age, 
#number of children, 
#likes paisley, 
#likes marble, 
#favourite type of wood
#prefers open concept?
#interior design theme preference
#other

#store user information in variables

#display user information as a hash

i = 0 #used in later loop
client = {} #necessary for filling in content

#Define a method for entering information into hash
def hashing(client, key, value)
	client[key.to_sym] = value
end

#testing initial method
#hashing(client, "me", 31)
#hashing(client, "you", 31)
#puts client

#Ask and store user information
puts "What is the client's full name?"
name = gets.chomp.to_s.capitalize

puts "What is the client's age?"
age = gets.chomp.to_i

puts "How many children does the client have?"
children = gets.chomp.to_i

#putting nil for children if none
if children == 0 
	children = nil
end

puts "Does the client like paisley wallpaper?"
paisley = gets.chomp.to_s.downcase

#making paisley boolean
if paisley == "y" || "yes" || "yeah" || "sure" || "definitely" || "hell yes"
	paisley == true
else
	paisley == false
end

puts "Does the client like marble counter-tops?"
marble = gets.chomp

if marble == "y" || "yes" || "yeah" || "sure" || "definitely" || "hell yes"
	marble == true
else
	marble == false
end

puts "What is the clients favourite type of wood?"
wood = gets.chomp

puts "Does the client prefer an open concept home?"
open_concept = gets.chomp

if paisley == "y" || "yes" || "yeah" || "sure" || "definitely" || "hell yes"
	paisley == true
else
	paisley == false
end

puts "What is the client's preferred interior design theme?"
design_theme = gets.chomp

puts "Does the client have any other preferences for design?"
other = gets.chomp

if paisley == "y" || "yes" || "yeah" || "sure" || "definitely" || "hell yes"
	paisley == true
else
	paisley == false
end

#storing user information in strings to later use in a loop
keys = ["Name", "Age", "Children", "Likes_paisley", "Likes_Marble", "Preference_of_wood", "Open_Concept", "Design_Theme", "Other"]
values = [name, age, children, paisley, marble, wood, open_concept, design_theme, other]

#starting loop for inputting information into the client hash
if keys.length == values.length 			#works for testing code
	while i < keys.length
		key = keys[i]
		value = values[i]
		hashing(client, key, value)
		i += 1
	end
	puts client
else 
	puts "There was an error inputting client information, please try again"
end