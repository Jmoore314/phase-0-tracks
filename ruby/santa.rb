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
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa instance ..."
	end

end

me = Santa.new
me.speak
me.eat_milk_and_cookies("Chocolate Chip")