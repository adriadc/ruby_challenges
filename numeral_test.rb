#ask for the person's birthday in MMDDYYYY format
puts "What is your Birthday? Please write it MMDDYYYY:"
#get birthday and assign to a variable
birthday = gets

#make an array to access the birthday and turn into an integer
num = birthday[0].to_i + birthday[1].to_i + birthday[2].to_i + birthday[3].to_i + birthday[4].to_i + birthday[5].to_i + birthday[6].to_i + birthday[7].to_i
#convert back to streing. Add together.
num = num.to_s
#convert birthday into a single digit
num = num[0].to_i + num[1].to_i

if num > 9
num = num[0].to_i + num[1].to_i
end

#Use a case statement to provide many different results


case num
	when 1
		puts "Your birth path number is 1. One is the leader number. It indicates the ability to stand alone and is a strong vibration. It is ruled by the Sun."
	when 2
		puts "Your birth path number is 2. Two is the mediator and peace-lover. It indicates the desire for harmony. It is a gentle, considerderate and gentle vibration. It is ruled by the Moon."
	when 3
		puts "Your birth path number is 3. Three is a sociable, friendly and outgoing vibration. Kind, Positive and optimistic, three's enjoy life and have a good sense of humor. It is ruled by Jupiter."
	when 4
		puts "Your birth path number is 4. Four is the worker. Practical with a love of detail, four's are trustworthy, hardworking and helpful. It is ruled by Uranus. "
	when 5 
		puts "Your birth date number is 5. Five is the freedom lover. Five is an intellectual vibration. These are idea people with a love of variety and the ability to adapt to most situations. It is ruled by Mercury. "
	when 6
		puts "Your birth path number is 6. Six is the peace lover. It is a loving, stable and harmonious vibration. It is ruled by Venus."
	when 7
		puts "your birth date number is 7. Seven is the deep thinker. Seven is a spiritual vibration. Seven's are not very attached to material things and are introspective and generally quiet. It is ruled by Neptune."
	when 8
		puts "Your birth path number is 8. Eight is the manager. Eight is a strong, successful and material vibration. It is ruled by Saturn."
	when 9
		puts "Your birth date number is 9. Nine is the teacher. Nine is a tolerant, somewhat impractical and sympathetic vibration. It is ruled by Mars."
	else
		puts "Your numerolgy number is too complex. you are a unusual being"
	end