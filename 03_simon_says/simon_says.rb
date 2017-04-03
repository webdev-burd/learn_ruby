#write your code here

def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num=2)
	((word + " ") * num).chop
end

def start_of_word(word, num)
	word[0..(num-1)]
end

def first_word(sentence)
	(sentence.split(" "))[0]
end

def titleize(sentence)
	titleized = ""
	(sentence.split(" ")).each do |word|
		if "a an but or for nor and in of on over the".index(word) == nil
			titleized += word.capitalize + " "
		else
			titleized += word + " "
		end
	end
	titleized[0] = titleized[0].upcase
	titleized.chop
end