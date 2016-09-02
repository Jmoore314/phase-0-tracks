# require sqlite3
# getting current time in ruby
# storing current time in a variable
# ask user for a task
# ask user for notes on task
# ask user for the time and date when task to be completed
# ask user for how long the task is estimated to complete
# store task, notes, current time, estimated length, and time to be completed in table
# ask user if they would like to see todays schedule
# list all tasks
# weekly schedule by day
# daily schedule

#require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("to_do_list.db")
db.results_as_hash = true

# store creation table sql in variable
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS to_do_list(
    id INTEGER PRIMARY KEY,
    timestamp DATETIME,
    task VARCHAR(255),
    notes VARCHAR(255),
    estimated_length INT,
    to_be_complete DATETIME
  )
SQL

# execute sql on existing database
db.execute(create_table_cmd)

# command inputs
def input(command)
	case command
	when "!commands"
		commands()
	when "view"
		view()
	when "add"
		add()
	when "delete"
		delete()
	when "exit"
		exit()
	else 
		puts "I'm sorry I couldn't understand your input, \nto view the commands available type \'!commands\'"
	end
end

# list commands
def commands
	puts "Commands:\n Add - to add a task to your list\n Delete - to delete a task from your list\n View - to view your current list\n Exit - to exit"
	valid_input = true
end

def view
	view_items = db.execute("SELECT * FROM to_do_list")
	view_items.each do |item|
		puts "At #{timestamp} #{task} was entered with the note:\n #{notes}/nEstimated time of completion: #{estimated_length} minutes\n To be completed by: #{to_be_complete}"
		puts "X" * 30
	end
	valid_input = true
end

def add
	valid_input = true
end

def delete

	valid_input = true
end

# method to insert tasks to database
def create_list_item(db, timestamp, task, notes, estimated_length, to_be_complete)
  db.execute("INSERT INTO to_do_list (timestamp, task, notes, estimated_length, to_be_complete) VALUES (?, ?, ?, ?, ?)", [timestamp, task, notes, estimated_length, to_be_complete])
end

# method to delete tasks in database
def delete_list_item(db, task)
  db.execute("INSERT INTO to_do_list (timestamp, task, notes, estimated_length, to_be_complete) VALUES (?, ?, ?, ?, ?)", [timestamp, task, notes, estimated_length, to_be_complete])
end


# driver code
puts "Welcome to your to-do-list!"
puts "You can view commands by typing \'!commands\'"

valid_input = false
valid_else = false

while valid_else == false
	while valid_input == false
		puts "What would you like to do?"
		command = gets.chomp.downcase
		break if command == "exit"
		input(command)
	end
	
	puts "Would you like to do something else?"
	something_else = gets.chomp.downcase

	if something_else == "no"
		valid_else == true
	end
end