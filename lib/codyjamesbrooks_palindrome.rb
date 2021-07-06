require "codyjamesbrooks_palindrome/version"

class String
  # Returns true for a palindrome, false otherwise. 
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  # Returns the letters in the string.
  def letters
    the_letters = ""
    the_letter = self.split(//).select { |letter| letter.match?(/[a-zA-Z]/) }
    the_letter.join
  end 
  
  private
    # Retturns content for palindrome testing. 
    def processed_content
      self.letters.downcase
    end
end
