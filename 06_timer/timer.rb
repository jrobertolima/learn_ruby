class Timer
  #write your code here
	attr_writer :seconds
	def initialize
		@seconds = 0
	end
	
	def seconds
		@seconds	
	end
	
	def time_string
		t = Time.at(@seconds).utc
		t.strftime("%H:%M:%S")
	end
	
	
end
