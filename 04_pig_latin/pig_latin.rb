#write your code here
def pig_latin(word)
	if "aeiou".index(word[0]) != nil # starts with vowel
		word + "ay"
	else # starts with consonant
		first_cons = ""
		i = 0
		while "aeiou".index(word[i]) == nil
			if word[i] == "q" and word[i + 1] == "u"
				first_cons += "qu"
				break
			end
			first_cons += word[i]
			i += 1
		end
		word[first_cons] = ""
		word + first_cons + "ay"
	end
end

def translate(sentence)
	pig_latined = ""
	sentence.split(" ").each do |word|
		pig_latined += pig_latin(word) + " "
	end
	pig_latined.chop
end