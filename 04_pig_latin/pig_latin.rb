#translate word
def traduz(text)
	if text[0] =~ /[aeiou]/  #start with vowel
		text  = text << "ay" 
	else	
		text = swapFirstLetter(text) #start with consonant
	end	
end

#translate a text
def translate(text)
	words = text.split #Dividing text in words
	word=""
	for i in 0..words.size-1
		word+=" "+traduz(words[i])
	end	
	return word.strip
end

def swapFirstLetter(text)
# Start with consonant
	tempLetter = ""  #used to move letters to the end of the word

	if text.rindex('squ',2)!=nil  #the word starts with "squ" 
		text << 'squ'
		2.downto 0 do |i|
		text[i] = " "
		end
	else # manipulate the first consonant
		tempLetter = text[0]
		text[0] = " "
		if (text[1] =~/[aeiou]/)==nil 
			tempLetter += text[1] #second consonant
			text[1] = " "
			if ((text[2] =~/[aeiou]/)==nil) #third consonant?
				tempLetter += text[2]
				text[2] = " "
			end	
		elsif text[1]=="u" and tempLetter.downcase=="q" # dealing with "QU" 
				tempLetter += text[1]
				text[1] = " "				
		end	
	end
	text << tempLetter+"ay"
	return text.strip!
end
