aliens = []
p aliens

aliens.push("porsche", "blue", "vaping", 31415926, false)
p aliens

aliens.delete_at(2)
p aliens

aliens.insert(2, "bloop")
p aliens

aliens.shift
p aliens

#aliens.unshift("bleep") testing
#p aliens

puts "it is " + aliens.include?("blue").to_s + " that the aliens array includes 'blue'"

humans = ["cool people", "you and I", "you and aye", "the ubermensch"]\

creatures = humans + aliens
p creatures
