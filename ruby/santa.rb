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

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance with #{@gender} gender and #{@ethnicity} ethnicity"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		if cookie.downcase == "salt"
			puts "Omg  a #{cookie} cookie?!?! COAL FOR YOU!"
		else
			puts "That was a good #{cookie} cookie!"
		end
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		@reindeer_ranking
	end

	#getters
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

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

#Add 3 attribute changing methods to santa
	#celebrate birthday - advances age by 1 "non setter"
	#get_mad_at will take reindeer as argument "non setter"
		#makes reindeer appear at the end of the reindeer rankings
	#a gender attribute setter that will allow the gender to be changed

	#getters
		#@age will return age
		#@ethnicity will return ethnicity

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")


#DRIVER CODE
santas = []
example_genders = ["Agender", "Female", "Bigender", "Male", "Female", "Gender fluid", "N/A"]
example_ethnicities = ["Black", "Latino", "white", "Japanese-African", "Prefer not to say", "Mystical Creature (unicorn)", "N/A"]
array_of_cookies = ["Chocolate Chip", "Oatmeal Raisin", "Salt", "Shortbread", "Peanut Butter", "Heath Bar", "Sugar"]
#reinder ranking array below is for testing only, n order to randomize reinder rankings
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
100000.times do #my processor got very hot, but I could do 1,000,000 in about 5 minutes
	n = rand(0..6)
	m = rand(0..6)
	santas << Santa.new(example_genders[n], example_ethnicities[m])
end

santas.each do |santa|
	puts "X" * 60 #easy to identify segments of santas
	santa.speak
	rand(1..140).times do santa.celebrate_birthday #randomly generates a new age for the santa
	end
	rand(1..50).times do santa.get_mad_at(reindeer_ranking[rand(0..7)]) #scrambles reindeer rankings
	end
	puts "Age: #{santa.age}"
	puts "Ethnicity: #{santa.ethnicity}"
	puts "Gender: #{santa.gender}"
	puts "Ranking of reindeer from greatest to least favourite\n#{santa.reindeer_ranking}"
	p santa.eat_milk_and_cookies(array_of_cookies[rand(0..6)])
end
