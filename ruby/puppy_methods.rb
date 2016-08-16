class Puppy
    
    def initialize
        puts "Initializing new puppy instance ..."
    end
    
    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end
    
    def speak(how_many)
        how_many.to_i
        how_many.times { puts 'Woof!'}
    end
    
    def roll_over
        puts "*rolls over*"
    end
    
    def dog_years(years)
        years.to_f
        dog_years = years*7
        puts "The dog is #{dog_years} old in dog years."
        dog_years
    end
    
    def give_paw
        puts "Dog is offering a paw to shake"
        puts "Type yes to accept"
        acceptance = gets.chomp
        if acceptance == 'yes'
            puts "Congratulations, you are now friends!!!"
        else
            puts "You made dog sad"
        end
    end

end

spot = Puppy.new
spot.fetch('Ball')
spot.speak(4)
spot.roll_over
spot.dog_years(7)
spot.give_paw

#class Soccer_player
#
#	def initialize
#		puts "Initializing new Soccer_player instance ..."
#	end
#
#	def scored(number_of_goals)
#		number_of_goals.times { puts "Your player just scored! Goooooool!" }
#	end
#
#	def red_card(number_of_red_cards)
#		puts "Your player has recieved #{number_of_red_cards} red cards"
#	end
#
#	def saved(number_of_goals_saved)
#		puts "Your player saved #{number_of_goals_saved} goals. What a player!"
#	end
#
#end
#
#Imbramovic = Soccer_player.new
#Imbramovic.scored(9)
#Imbramovic.red_card(2)
#Imbramovic.saved(3)

