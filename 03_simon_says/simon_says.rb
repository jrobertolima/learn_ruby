#write your code here
def echo(greeting)
	greeting=="hello"? "hello": "bye"
end 

def shout(greeting)
	(greeting=="hello" or greeting=="bye")? echo(greeting).upcase : greeting.upcase
end
	
def repeat(*greeting)
	greetingLocal = greeting[0]
	i = (greeting[1].to_i)-1
	if (i > 0)
		for j in 1..i 
			greetingLocal += " "+ greeting[0]
		end	
	else
		greetingLocal += " "+greetingLocal
	end	

	return greetingLocal
end

def start_of_word(greeting, index)
	result=""
	for i in 0..(index-1)
		result += greeting[i]
	end	
	return result
end

def first_word(word)
	result = ""
	word.index(" ").times do |i|
		result += word[i]	
	end
	return result
end

def titleize(title)
	littleWords = ["and","the","over","to","under"] 
	titleLocal = title.split
	titleLocal.each do |x|
	    if littleWords.index(x)==nil or (titleLocal.index(x)==0)
			x.capitalize!			
        end 
	end	
	return titleLocal.join(" ")
end























