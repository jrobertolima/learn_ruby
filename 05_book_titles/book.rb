class Book
# write your code here
	attr_writer :title

	def title
		titleize(@title)
	end	

	def titleize(title)
		littleWords = ['and','a','an','the','to','or', 'in', 'for', 'of'] 
		titleLocal = @title.split
		titleLocal.each do |x|
			if littleWords.index(x)==nil or (titleLocal.index(x)==0)
				x.capitalize!			
			end #if
		end	 #do |x|
		return titleLocal.join(" ")
	end
	
end


