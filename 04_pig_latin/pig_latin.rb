#write your code here
def traduz(text)
	if text[0] =~ /[aeiou]/
		text  = text << "ay" 
	else
		text = swapFirstLetter(text)
	end
	return text
end

def translate(text)
	i= text.split
	i1=traduz(i[0])
	if i.size > 1
		i2=" "+traduz(i[1])
	else
		i2=" "
	end
	return (i1+i2).strip
end

def swapFirstLetter(text)
# Is not a vowel
	tempLetter = text[0]
	text[0] = " "
	if (text[1] =~/[aeiou]/)==nil
		tempLetter += text[1]
		text[1] = " "
#	elsif (text[2] =~/[aeiou]/)==nil)
	end	
	text << tempLetter+"ay"
	return text.strip!
end
