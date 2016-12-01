#write your code here
def add number1, number2
	number1 + number2
end

def subtract number1, number2
	number1 - number2
end

def sum(array)
	sumup = 0
	array.each {|i| sumup = sumup +i }
	return sumup
end

def multiply(array)
	multUp = 1
	array.each {|i| multUp = multUp*i }
	return multUp
end