module Shout

	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yell_happily(words)
		puts words + "!!!" + " ^_^"
	end

end

class Child
	include Shout
end

class Adult
	include Shout
end


#DRIVER CODE

#require_relative 'shout'
#Shout.yell_angrily("Oh")
#Shout.yell_happily("Oh")
child = Child.new
child.yell_happily("Thank you for the new toy Mama")

adult = Adult.new
adult.yell_angrily("Damn, now we'll never get any sleep")