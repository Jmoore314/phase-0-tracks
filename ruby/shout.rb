module Shout

	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!" + " ^_^"
	end

end

#DRIVER CODE

require_relative 'shout'
Shout.yell_angrily("Oh")
Shout.yell_happily("Oh")

