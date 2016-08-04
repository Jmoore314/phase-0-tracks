#!/usr/bin/env ruby -wKU

def vamipres()

	#valid entry for number of employees to sign up
	valid_i = false
	while valid_i == false
		puts "How many employees will be processed?"
		employees = gets.chomp
		x = employees.to_i

        case x
	    when 0
	        puts "Please enter a valid number of employees to sign up"
			valid_i = false
		else 
			valid_i = true
		end
	end
    
    puts "Personnel entry #1"
        
    i = employees.to_i
	#start loop of employees
	n = 1
	until n > i 
	#start of survey
		puts "What is your name"
		name = gets.chomp
		names = name.downcase
	
		puts "How old are you?"
		age = gets.chomp
		ages = age.to_i
	
		puts "In what year were you born?"
		year = gets.chomp
		years = year.to_i
	
		#age_check
		age_check = 2016 - (ages + years)
	
		#garlic loop
		valid_garlic = false
		while valid_garlic == false
			puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
			garlic = gets.chomp
			garlics = garlic.downcase
	
			case garlics
			when "y", "yes", "sure", "ok" 
				garlic = true
				valid_garlic = true
			when "nah", "n", "no", "nope"
				garlic = false
				valid_garlic = true
			else
				puts "Please answer in the form of y/n or yes/no"
				valid_garlic = false
			end
		end
	
		#insurance loop
		valid_insurance = false
		while valid_insurance == false
			puts "Would you like to enroll in the company's health insurance? (y/n)"
			insurance = gets.chomp
			insurances = insurance.downcase
	
			case insurances
			when "y", "yes", "sure", "ok"
				insurance = true
				valid_insurance = true
			when "nah", "n", "no", "nope"
				insurance = false
				valid_insurance = true
			else
				puts "Please answer in the form of y/n or yes/no"
				valid_insurance = false
			end
		end
		
		#allergy array loop
		allergy_array = Array.new
		done = false
		while done == false
		    puts "Please list any allergies that you might have one at a time, when done you may simply enter 'done'"
		    allergy_array << gets.chomp
		    check = allergy_array.last.downcase
		    case check
		    when "done", "sunshine"
		        puts "Thank you for your input."
		        puts "Here is the list of allergies you have provided me already." + allergy_array.to_s
		        done = true
		    else
		        puts "Thank you for your input."
		        puts "Here is the list of allergies you have provided me already." + allergy_array.to_s
		        done = false
		    end
		end
		
		checking = allergy_array.last.downcase
		
		#because the oldest living person ever was 122
		#above 122 years old even if year and age match and age_check case
		case ages
		when 0..122	
			case age_check
			when 0, 1
				age_check = true
			else
				age_check = false
			end
		else
			age_check = false
		end
	
		#final conditionals
		case
	    when names == ("drake cula" || "tu fang")
			puts "Definitely a vampire"
		when checking == "sunshine"
	        puts "Probably a vampire"
		when (age_check && (garlic || insurance)) == true
			puts "Probably not a vampire"
		when age_check == false && garlic == false && insurance == false
			puts "Almost certainly a vampire"
		when (age_check && (garlic || insurance)) == false
			puts "Probably a vampire"
		else
			puts "Results inconclusive"
		end
		
		n += 1
		
		if n > 1
		    puts "Personnel entry ##{n}"
		end
	end
	
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end


vamipres()