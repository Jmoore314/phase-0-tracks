#CLASS PSUEDOCODE

# design a new class - inspector
	# initialize with
		# attribute 1 - age (defaulted)
		# attribute 2 - caffeine consumption preference (defaulted to coffee)
		# attribute 3 - gender (setter)
		# attribute 4 - ethnicity (getter)
		# attribute 5 - cases solved (randomly generated by rank)
		# attribute 6 - rank (randomly generated or user input)
		# attribute 7 - name (setter)
		# attribute 8 - alcohol tollerance between 1 and 10 (getter)
	# methods 
		# get promoted
			# promotion will advance rank to the index in rank array, 
			# if already at max rank then retires
		# question the string argument
			# puts Where were you between 5 and 7 pm last friday
		# paperwork
			# puts "I have a ton of paperwork to complete"
		# pub with argument for how many beers to consume
			# how many beers to consume.times 
				# if rank is above certain level then
					# puts I think that would be setting a poor example to your colleagues
					# puts maybe you should try your hand at a round of golf with your peers
				# else rank is at or below certain level then
					# for each conumption
						# puts "name" takes a drink
						# case drinks
						# when already past 2 then 
							# puts "name" starts to feel a little tipsy
						# when already past 5 then
							# puts "name" starts to hiccup and appear quite well off
						# when already past 8 then
							# puts "name" appears very drunk and is slurring their words
						# when 10 then 
							# puts "name" blacks out
						#end
						# alcohol tollerance + 1
					#end 
					#puts "name" retires to their residence and concludes their night out
			# break if drinks > alcohol tollerance
		# solve another case!
			# increase case solved by 1 
			# puts congratulations "name" on solving another case!
		# celebrate birthday
			# increase age by 1
		# ccpref 
			# puts "name" prefers ccpref
	# attr_accessor name, gender, caffeine consumption preference
	# attr_reader ethnicity, age, cases solved, rank, alcohol tollerance
# end

#CLASS CODING
class Inspector

	def initialize(name, gender, ethnicity)
		@age = rand(18..65)
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@ccpref = "Coffee"
		@cases_solved = 0 
		@rank = "Constable"
		@alcohol_tol = 2
		puts "Initializing Inspector instance #{@name} with #{@gender} gender and #{@ethnicity} ethnicity"
	end

	def promotion
		ranks = ["Retired", "Constable", "Sergeant", "Inspector", "Chief Inspector", "Superintendant", "Chief Superintendant"]
		previous_rank = ranks.index(@rank)
		if previous_rank == 0 
			puts "You are no longer on the force, you cannot advance in rank"
		elsif previous_rank == 6
			@rank = ranks[0]
			puts "You decide to retire from the force after an incredibly successful carreer"
		else
			@rank = ranks[previous_rank + 1]
			puts "Congratulations on your promotion #{@rank}!"
		end
	end

	def question(whom)
		puts "#{@name} decides to question #{whom}"
		puts "Where were you between 5 and 7 pm last friday evening?"
	end

	def paperwork
		puts "#{@name} has a metric ton of paperwork to complete"
	end

	def pub(drinks)
		ranks = ["Retired", "Constable", "Sergeant", "Inspector", "Chief Inspector", "Superintendant", "Chief Superintendant"]
		if ranks.index(@rank) > 4
			puts "I think that would be setting a poor example to your colleagues \n You should try your hand at a round of golf with your peers"
		else 
			#p drinks #for testing purposes
			drinks.times do |i|
				if i == @alcohol_tol
					puts "#{@name} doesn't look so good, they decide to head home by cab because they know their limit"
					break
				elsif i == 9
					puts "#{@name} slams another drink"
					if ranks.index(@rank) == 0
						puts "#{@name} blacks out, you're a regular old boozer at this point..."
					else
						puts "#{@name} blacks out, this can't look good to their peers..."
					end
				elsif i > 7
					puts "#{@name} pounds down another round \n they appear very drunk at this point and are slurring their words"
				elsif i > 4
					puts "#{@name} has themselves another round and thinks to themself\n I'm starting to consider this to be a rather expensive habit... \n They appear quite well off and hiccuping"
				elsif i > 1
					puts "#{@name} enjoys another fresh brew with the locals \n They appear to be slightly tipsy and enjoying themself"
				else
					puts "#{@name} enjoys a round with friends"
				end  
			end
			if drinks <= @alcohol_tol
				puts "#{@name} decides to head home by cab after a great night."
			end
			@alcohol_tol += 1  
		end 
	end

	def solve_case
		@cases_solved += 1
	end

	def birthday
		@age += 1
	end

	def caffeine
		puts "#{@name} enjoys a fresh cup of #{@ccpref}"
	end

	attr_reader :ethnicity, :age, :cases_solved, :rank, :alcohol_tol
	attr_accessor :name, :gender, :ccpref

end


#DRIVER CODE TESTING THE CLASS
#inspectors = []
#example_genders = ["Agender", "Female", "Bigender", "Male", "Female", "Gender fluid", "N/A"]
#example_ethnicities = ["Black", "Latino", "white", "Japanese-African", "Prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#array_of_names = ["Tom", "Mary", "Ellen", "Tyra", "James", "Dave", "Keith"]
#5.times do #my processor got very hot, but I could do 1,000,000 in about 5 minutes
#	n = rand(0..6)
#	m = rand(0..6)
#	l = rand(0..6)
#	inspectors << Inspector.new(array_of_names[l], example_genders[n], example_ethnicities[m])
#end
#
#
#inspectors.each do |inspector|
#	puts "X" * 60
#	p inspector.name
#	p inspector.age
#	p inspector.gender
#	p inspector.ethnicity
#	p inspector.ccpref
#	p inspector.rank
#	p inspector.cases_solved
#	p inspector.alcohol_tol
#	rand(1..10).times do 
#		inspector.promotion
#	end
#	p inspector.rank
#	inspector.paperwork
#	inspector.question("townsfolk")
#	inspector.caffeine
#end

#USER INTERFACE PSUEDOCODE
#welcome users to program
#ask how many inspectors they would like to make, limit to 100,000
#ask for user input if they would like to automate this process
	#if affirmative answer 
		#then automate all of the inspectors
	#else 
		# input the inspectors one by one
		# ask again if want to automate the rest
			# If yes 
				#then automate the rest
			# else
				#repeat input cycle to make new custom inspector 
			#end
	#end
#When finished entering code, print out the resulting inspectors



#simplification method for automation #REFACTORING
def automation(create_inspectors, inspectors, example_names, example_genders, example_ethnicities)
	a = (example_names.length - 1)# takes into account that user input will add length to various arrays
	b = (example_genders.length - 1)# takes into account that user input will add length to various arrays
	c = (example_ethnicities.length - 1)# takes into account that user input will add length to various arrays
	
	leftover_creations = create_inspectors - inspectors.length
	
	leftover_creations.times do 
		l = rand(0..a) #creating 3 random numbers every loop
		m = rand(0..b)
		n = rand(0..c)
		inspectors << Inspector.new(example_names[l], example_genders[m], example_ethnicities[n])
	end
end

#gets an affirmative or negative answer, used later
affirmative = ["y", "yes", "yeah", "sure", "ok", "hell yes", "hell yeah", "definitely", "mmhmm", "yes please", "please", "affirmative"]
negative = ["n", "no", "nah", "nope", "no thanks", "negative", "no way", "hell no", "hell nah"]

#storing information for inspectors array
inspectors = []
example_genders = ["Agender", "Female", "Bigender", "Male", "Androgyne", "Gender fluid", "N/A"]
example_ethnicities = ["Black", "Latino", "White", "Japanese-African", "Prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names = ["Harper", "Hayden", "Jamie", "Jesse", "Jordan", "Julian", "Alex", "Elliot"] 

#information used for later 
caffeine_intake_methods = ["Coffee", "Green Tea", "English Tea w/ Milk", "Oolong Tea", "Espresso", "Cafe Americano", "Red Bull", "Energy Drinks", "Caffeine pills", "N/A"]


#USER INTERFACE
puts "Welcome to the Inspector simulator!"

puts "Here you are able to simulate creating Inspectors"

create_valid = false
while create_valid == false
	puts "How many Inspectors would you like to create?"
	create_inspectors = gets.chomp.to_i
	if create_inspectors == 0 
		puts "It appears you have either entered a string or 0, \nPlease enter a valid integer between 1 and 100,000"
	elsif create_inspectors < 0 
		puts "It appears you have entered a negative integer, \n Please enter a valid integer between 1 and 100,000"
	elsif create_inspectors > 100000
		puts "It appears you have entered an integer greater than 100,000, Please enter a valid integer between 1 and 100,000"
	else
		create_valid = true 
	end
end

automate_valid = false
while automate_valid == false
	puts "Would you like to automate the creation process?"
	automate = gets.chomp.downcase
	
	if affirmative.include?(automate)
		automation(create_inspectors, inspectors, example_names, example_genders, example_ethnicities)
		automate_valid = true
	elsif negative.include?(automate)
		"Ok, we can begin customizing your inspector(s) now, \n Should you decide to automate the rest of the process: you can do so after creating an inspector"
		create_inspectors.times do |i|
			number_of_inspector = i + 1
			puts "What would you like to name your ##{number_of_inspector} inspector?"
			name = gets.chomp.to_s.capitalize
			if !example_names.include?(name) #add the user inputted name to the example_names if our example does not include it already
				example_names << name
			end

			puts "What gender is your inspector, (all genders are accepted here ^_^)"
			gender = gets.chomp.to_s.capitalize
			if !example_genders.include?(gender)
				example_genders << gender
			end

			puts "What is your inspector's ethnicity, (all ethnicities are also accepted here ^_^)"
			ethnicity = gets.chomp.to_s.capitalize
			if !example_ethnicities.include?(ethnicity)
				example_ethnicities << ethnicity
			end

			puts "Ok, let's enter your inspector's information into our roster..."
			inspectors << Inspector.new(name, gender, ethnicity)

			puts "Your inspector's information is entered into our roster"

			if (i + 1) < create_inspectors #asks to automate or create another if iteration is less than desired amount
				puts "Would you like to customize another inspector? \n NOTE: Answer 'no' if you would like to automate the rest."
				custom_another = gets.chomp.downcase

				if affirmative.include?(custom_another)
					puts "Ok, let's create another..."
				elsif negative.include?(custom_another)
					puts "Would you like to automate the rest of your inspectors?"
					automate = gets.chomp.downcase
					if affirmative.include?(automate)
						automation(create_inspectors, inspectors, example_names, example_genders, example_ethnicities)
						break
					else 
						puts "Ok, let's create another then"
					end
				end
			end
		end
		automate_valid = true
	else
		puts "It looks like you gave me an answer I cannot understand, \n Please answer in a 'yes' or 'no' manner"
	end
end

puts "Now that we are done creating the inspectors, \nLet's show you all of the information we have on the roster. \n Please push 'enter' to continue"
gets.chomp

inspectors.each do |inspector|
	puts "X" * 70
	puts "Inspector's Name: #{inspector.name}"
	puts "This inspector is #{inspector.age} years old"
	puts "This inspector's gender is #{inspector.gender}"
	puts "This inspector's ethnicity is #{inspector.ethnicity}"
	#adding a random caffeine intake preference
	inspector.ccpref = caffeine_intake_methods.sample
	puts "This inspector prefers #{inspector.ccpref} as a source of caffeine"
	puts "This inspector's rank is #{inspector.rank}"
	puts "This inspector has solved #{inspector.cases_solved} cases"
	puts "This inspector's alcohol tollerance is #{inspector.alcohol_tol} out of 10"
end