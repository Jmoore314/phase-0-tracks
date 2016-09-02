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

# require gems
require 'sqlite3'

# create SQLite3 database
$DB = SQLite3::Database.new("to_do_list.db")
$DB.results_as_hash = true

# store creation table sql in variable
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS to_do_list(
    id INTEGER PRIMARY KEY,
    timestamp VARCHAR(40),
    task VARCHAR(255),
    notes VARCHAR(255),
    estimated_length INT,
    to_be_complete VARCHAR(19)
  )
SQL

# execute sql on existing database
$DB.execute(create_table_cmd)

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

# list all commands available
def commands
	puts "Commands:\n Add - to add a task to your list\n Delete - to delete a task from your list\n View - to view your current list\n Exit - to exit"
end

# view all tasks
def view
	view_items = $DB.execute("SELECT * FROM to_do_list")
	view_items.each do |item|
		puts "At #{item['timestamp']}:\n#{item['task']} was entered with the note:\n #{item['notes']}\nEstimated time of completion: #{item['estimated_length']} minutes\nTo be completed by: #{item['to_be_complete']}"
		puts "=" * 30         # acts as a divider
	end
end

# add tasks
def add
	timestamp = Time.now # stores the current time

	puts "What is the task you would like to enter?"
	task = gets.chomp.downcase

	puts "What notes would you like to add?"
	notes = gets.chomp

	puts "What is the estimated length (in minutes)?"
	estimated_length = gets.chomp.to_i

	puts "What is the date and time to be completed? (YYYY-MM-DD HH:mm:ss)"
	to_be_complete = gets.chomp

	create_list_item(timestamp.inspect, task, notes, estimated_length, to_be_complete)
end

#delete tasks
def delete
	puts "Which task would you like to delete?"
	delete = gets.chomp.downcase.to_s

	delete_list_item(delete)

	puts "#{delete} has been deleted"
end

# method to insert tasks to database
def create_list_item(timestamp, task, notes, estimated_length, to_be_complete)
	$DB.execute("INSERT INTO to_do_list (timestamp, task, notes, estimated_length, to_be_complete) VALUES (?, ?, ?, ?, ?)", [timestamp, task, notes, estimated_length, to_be_complete])
end

# method to delete tasks in database
def delete_list_item(task)
  	$DB.execute("DELETE FROM to_do_list WHERE task=\'#{task}\'")
end

############################################################################
# driver code
puts "Welcome to your to-do-list!"
puts "You can view commands by typing \'!commands\'"

valid_input = false
valid_else = false

while valid_input == false
	puts "What would you like to do?"
	command = gets.chomp.downcase
	break if command == "exit"
	input(command)
	
	puts "Would you like to do something else?"
	something_else = gets.chomp.downcase

	if something_else == "no"
		valid_input = true
	end
end