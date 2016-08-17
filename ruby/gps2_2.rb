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
		grocery_list[item.to_sym] = 1
	end
	grocery_list
end

p grocery_list = create_list("carrots apples cereal pizza")

#2nd method
#add item to list with a quantity to the list (3 arguments)
#hash[item] += quantity
#return the final hash 

def add_item(grocery_list, item, quantity)
	grocery_list[item.to_sym] += quantity
	grocery_list
end

p add_item(grocery_list, "oranges", 4)

#3rd method
#method takes the item to be deleted and hash
#removing an item from the list (any items with 0 do not print key)
#return the final hash


#4th method 
#method will take 3 arguments (hash item quantity)
#hash[item] = quantity

#5th method
#print the final hash through iteration, within block we can print custom string