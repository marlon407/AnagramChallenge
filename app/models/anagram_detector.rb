class AnagramDetector < ActiveRecord::Base
	
	def isAnagram
		first_text =  self.first_text.downcase.chars.sort(&:casecmp).join.gsub(/\s+/, "")
		second_text = self.second_text.downcase.chars.sort(&:casecmp).join.gsub(/\s+/, "")
		return first_text == second_text
	end
end
