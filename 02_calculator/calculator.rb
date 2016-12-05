#write your code here
def add number1, number2
	number1 + number2
end

def subtract number1, number2
	number1 - number2
end

def sum(array)
	sumup = 0
	array.each {|i| sumup += i }
	return sumup
end

def multiply(array)
	multUp = 1
	array.each {|i| multUp *= i }
	return multUp
end

def power(number1,number2)
	number1**number2
end

def factorial(number)
	result = 1 # factorial of 0 and 1, by definition
	if number > 1 
		number.downto(2) do
			result = number*factorial(number-1) 
		end
	end
	return result
end