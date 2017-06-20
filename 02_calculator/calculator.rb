#write your code here
def add (x, y)
	return x + y
end

def subtract (x, y)
	return x - y
end

def sum (nums)
	@sum = 0
	nums.each do |i|
		@sum += i
	end
	return @sum
end

def multiply (*args)
	@result = 1
	args.each do |i|
		@result *= i
	end
	return @result
end

def power (x, y)
	return x**y
end

def factorial(num)
	if num <= 1
		return 1
	end

	@result = 1

	while num > 1 do
		@result *= num
		num -= 1
	end

	return @result
end