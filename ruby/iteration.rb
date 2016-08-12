def print_stuff
	name1 = gets.chomp
	name2 = gets.chomp
	puts "These people are on the cool list"
	yield(name1, name2)
end

print_stuff { |name1, name2| puts "#{name1} #{name2}"}

#################

array_names = ["Tiff", "John", "Dave", "Kristy"]

hash_ages = { "Tiff" => 20, "John" => 20, "Dave" => 90, "Kristy" => 45 }

#################
#Before
p array_names

p hash_ages

#################

array_names.each do |name|
    puts "Hi #{name}"
end

array_names.map! do |name|
    name*2
end

#################

hash_ages.each do |name, age|
    puts "#{name} is #{age} years old!"
end

#################
#After
p array_names

p hash_ages


#################
#Release 2

numbers_array = [1, 2, 3, 4, 5]

numbers_array.delete_if { |number| number <3 }

numbers_array.keep_if { |number| number == 4 }

numbers_array.reject { |number| number > 4 }

numbers_array.select { |number| number.odd? }
