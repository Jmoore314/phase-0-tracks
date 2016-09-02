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
#db.results_as_hash = true

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

def create_list(db, task, notes, estimated_length, to_be_complete)
  db.execute("INSERT INTO to_do_list (timestamp, task, notes, estimated_length, to_be_complete) VALUES (?, ?, ?, ?, ?)", [timestamp, task, notes, estimated_length, to_be_complete])
end