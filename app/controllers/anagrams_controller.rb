class AnagramsController < ApplicationController
	def index
		@anagram = AnagramDetector.new
	end
	
	def check
		@anagram = AnagramDetector.new
	end
	
	def checkAnagram
		logger.debug 
		@anagram = AnagramDetector.create(anagram_params)
		@result = @anagram.isAnagram
		render 'result'
	end
	
	private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def anagram_params
      params.require(:anagram_detector).permit(:first_text, :second_text)
    end
	
end
