#write your code here
def translate(sentence)
	@vowels = ['a', 'e', 'i', 'o', 'u']

	result = []
	words = sentence.split

	words.each do |word|
		if (@vowels.include? word[0])
			result.push(word + "ay")
		elsif (word[0..1] == 'qu')
			result.push(word[2..-1] + word[0..1] + "ay")
		elsif (@vowels.include? word[1])
			result.push(word[1..-1] + word[0] + "ay")
		elsif (word[1..2] == 'qu')
			result.push(word[3..-1] + word[0..2] + "ay")
		elsif (@vowels.include? word[2])
			result.push(word[2..-1] + word[0..1] + "ay")
		elsif (@vowels.include? word[3])
			result.push(word[3..-1] + word[0..2] + "ay")
		end
	end
	# if (@vowels.include? word[0])
	# 	return word + "ay"
	# elsif (@vowels.include? word[1])
	# 	return word[1..-1] + word[0] + "ay"
	# elsif (@vowels.include? word[2])
	# 	return word[2..-1] + word[0..1] + "ay"
	# end
	
	return result.join(' ')
end