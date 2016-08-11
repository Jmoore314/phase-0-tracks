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
###################################################

i = 0
client = {}

#an affirmative statement to include a variety of "yes" answers used later on
affirmative = ["y", "yes", "yeah", "sure", "definitely", "hell yes", "absolutely"]

#Define a method for entering information into hash
def hashing(client, key, value)
	client[key.to_sym] = value
end

#Ask and store user information
puts "What is the client's full name?"
name = gets.chomp.to_s.capitalize

puts "What is the client's age?"
age = gets.chomp.to_i

puts "How many children does the client have?"
children = gets.chomp.to_i

if children == 0 
	children = nil
end

puts "Does the client like paisley wallpaper?"
paisley = gets.chomp.to_s.downcase

if affirmative.include?(paisley) 
	paisley = true
else
	paisley = false
end

puts "Does the client like marble counter-tops?"
marble = gets.chomp.to_s.downcase

if affirmative.include?(marble)
	marble = true
else
	marble = false
end

puts "What is the client's favourite type of wood?"
wood = gets.chomp

puts "Does the client prefer an open concept home?"
open_concept = gets.chomp.to_s.downcase

#reversing affirmative answers, just for testing theory of code
if !affirmative.include?(open_concept)
	open_concept = false
else
	open_concept = true
end

puts "What is the client's preferred interior design theme?"
design_theme = gets.chomp

puts "Does the client have any other preferences for design?"
other = gets.chomp.to_s.downcase

other_design_preferences = []

if affirmative.include?(other)
	other = true
else
	other_design_preferences = nil
end

if other == true 
    puts "What other preference of design does the client have?\n Please enter these preferences one at a time.\n When completed, simply enter \"done\""
while other == true
	other_design_preferences << gets.chomp
	break if other_design_preferences.last == "done"
    end
end

#storing user information in strings to later use in a loop
keys = ["Name", "Age", "Children", "Likes_paisley", "Likes_marble", "Preference_of_wood", "Open_concept", "Design_theme", "Other"]
values = [name, age, children, paisley, marble, wood, open_concept, design_theme, other_design_preferences]

#starting loop for inputting information into the client hash
while i < keys.length
	key = keys[i]
	value = values[i]
	hashing(client, key, value)
	i += 1
end

puts client

#Changing information conditionals
puts "Would you like to change any of the client information?"
change = gets.chomp.to_s.downcase

if affirmative.include?(change)
	puts "Which information would you like to change?"
	info = gets.chomp.to_s.capitalize
	if keys.include?(info)
		puts "Which value would you like to assign this key?"
		value = gets.chomp
		puts "Lets process that change for you."
		hashing(client, info, value)
		puts client
	else 
		puts "This looks like a new element in the hash,\n Shall we process some new information for you?"
		new_change = gets.chomp
		if affirmative.include?(new_change)
			puts "Ok, which value would you like to assign this key?"
			value = gets.chomp
			puts "Lets process that addition for you."
			hashing(client, info, value)
			puts client
		else 
			puts "Alright. Thank you for your time."
		end
	end
else
	puts "Alright. Thank you for your time."
end