class Book
	# write your code here
	attr_accessor :title

	def title()
		titleized = ""
		(@title.split(" ")).each do |word|
			if ["a", "an", "but", "or", "for", "nor", "and", "in", "of", "on", "over", "the"].index(word) == nil
				titleized += word.capitalize + " "
			else
				titleized += word + " "
			end
		end
		titleized[0] = titleized[0].upcase
		titleized.chop
	end
end
