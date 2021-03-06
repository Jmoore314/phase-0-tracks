# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It allows us to access the file without needing to write out a full path to it.
#
require_relative 'state_data'

class VirusPredictor

 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end # initializing  and setting up instance variables,

 def virus_effects
   predicted_deaths 
   speed_of_spread
 end # purpose is to put other methods together with arguments we are set up.

 


 private

 def predicted_deaths
   # predicted deaths is solely based on population density
   if @population_density >= 200
     number_of_deaths = (@population * 0.4).floor
   elsif @population_density >= 150
     number_of_deaths = (@population * 0.3).floor
   elsif @population_density >= 100
     number_of_deaths = (@population * 0.2).floor
   elsif @population_density >= 50
     number_of_deaths = (@population * 0.1).floor
   else
     number_of_deaths = (@population * 0.05).floor
   end # purpose is to have conditional calculation with instance variables then to print it out.

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end

 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
   speed = 0.0

   if @population_density >= 200
     speed += 0.5
   elsif @population_density >= 150
     speed += 1
   elsif @population_density >= 100
     speed += 1.5
   elsif @population_density >= 50
     speed += 2
   else
     speed += 2.5
   end

   puts " and will spread across the state in #{speed} months.\n\n"

 end # purpose is a conditional calculation that will print out about how fast virus witll spread,

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

def states
 STATE_DATA.each do |state, state_info|
  # STATE_DATA[state] = state_info
   state_name = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
   state_name.virus_effects
 end
end

states 
#=======================================================================
# Reflection Section