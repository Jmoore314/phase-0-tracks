#define new class santa
	#instance method: speak
		#prints "Ho, ho, ho! Haaaappy holidays"
	#instance method: eat milk and cookies
		#Takes a cookie argument
		#prints "That was a good <type of cookie here>!"
	#instance method: initialize
		#prints "Initializing Santa instance ..."
#end

class Santa
	@reindeer_ranking = [
		"Rudolph", 
		"Dasher", 
		"Dancer", 
		"Prancer", 
		"Vixen", 
		"Comet", 
		"Cupid", 
		"Donner", 
		"Blitzen"
	]
	@age = 0

	def speak
		puts "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance with #{@gender} gender and #{@ethnicity} ethnicity"
	end

end

#me = Santa.new
#me.speak
#me.eat_milk_and_cookies("Chocolate Chip")

#Update Santa class with new attributes
	#gender, takes a string argument in initialization
	#ethnicity, takes a string argument in initialization
	#reindeer_ranking, array of most preferred to least preferred, gets a default value of [
		#"Rudolph", 
		#"Dasher", 
		#"Dancer", 
		#"Prancer", 
		#"Vixen", 
		#"Comet", 
		#"Cupid", 
		#"Donner", 
		#"Blitzen"
		#]
	#age, gets default of 0

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

array_of_cookies = ["Chocolate Chip", "Oatmeal Raisin", "Salt", "Shortbread", "Peanut Butter", "Heath Bar", "Sugar"]

santas.each do |santa|
	santa.speak
	santa.eat_milk_and_cookies(array_of_cookies[rand(0..6)])
end

