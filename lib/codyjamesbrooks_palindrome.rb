require "codyjamesbrooks_palindrome/version"

module CodyjamesbrooksPalindrome
  
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  private
    # Return content for palindrome testing
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include CodyjamesbrooksPalindrome
end

class Integer
  include CodyjamesbrooksPalindrome
end