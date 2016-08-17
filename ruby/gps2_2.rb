#psuedo-code
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

#1st method
#creating a method to create a list (hash)
#create a new hash (default values of 0)
#inside method have an empty array that will have the split items added to it
#iterate over the array to add each item to the hash with the quantity of 1
#print the final hash with quantities

def create_list(string_of_items)
	grocery_list = Hash.new 0
	grocery_list_array = string_of_items.split(' ')
	grocery_list_array.each do |item|
		downcased_item = item.downcase.to_sym
		grocery_list[downcased_item] = 1
	end
	grocery_list
end

#2nd method
#add item to list with a quantity to the list (3 arguments)
#hash[item] += quantity
#return the final hash 

def add_item(grocery_list, item, quantity)
	downcased_item = item.downcase.to_sym
	grocery_list[downcased_item] += quantity
end

#3rd method
#method takes the item to be deleted and hash
#removing an item from the list (any items with 0 do not print key)
#return the final hash

def remove_item(grocery_list, item)
	downcased_item = item.downcase.to_sym
	grocery_list[downcased_item] = 0
end

#p grocery_list

#4th method 
#update quantity
#method will take 3 arguments (hash item quantity)
#hash[item] = quantity

def update_item(grocery_list, item, quantity)
	downcased_item = item.downcase.to_sym
	grocery_list[downcased_item] = quantity
end

#p grocery_list

#5th method
#print the final hash through iteration, within block we can print custom string

def print_groceries(grocery_list)
	puts "We Need:"
	grocery_list.each do |item, quantity|
		puts "#{quantity} #{item}." if quantity > 0
	end
end

grocery_list = create_list("carrots apples cereal pizza")

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)

remove_item(grocery_list, "lemonade")

update_item(grocery_list, "ice cream", 1)

p print_groceries(grocery_list)

#thought about refactoring the downcased item but decided against it since each method only performs 1 or 2 task