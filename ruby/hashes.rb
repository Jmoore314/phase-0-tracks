#define a method for entering informtion into a hash

#ask for user information
#Name, 
#age, 
#number of children, 
#likes paisley, 
#likes marble, 
#favourite type of wood
#prefers open concept?
#other

#store user information in variables

#display user information as a hash

i = 0
client = {}

#Define a method for entering information into hash
def hashing(client, key, value)
	client[key.to_sym] = value
end

#hashing(client, "me", 31)
#hashing(client, "you", 31)
#puts client