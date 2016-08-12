def print_stuff
	name1 = gets.chomp
	name2 = gets.chomp
	puts "These people are on the cool list"
	yield(name1, name2)
end

print_stuff { |name1, name2| puts "#{name1} #{name2}"}