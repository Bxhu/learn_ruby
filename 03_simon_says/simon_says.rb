#write your code here
def echo(msg)
	return msg
end

def shout(msg)
	return msg.upcase
end

def repeat(msg, times=2)
	return msg + (" " + msg) * (times - 1)
end

def start_of_word(msg, i)
	return msg[0..(i-1)]
end

def first_word(msg)
	return msg.split[0]
end

def titleize(msg)
	@words = msg.split
	@except = ['over', 'a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'nor']
	@result = @words[0].capitalize
	@words[1..-1].each do |word|
		if @except.include? word
			@result += " " + word
		else	
			@result += " " + word.capitalize
		end
	end

	return @result
end