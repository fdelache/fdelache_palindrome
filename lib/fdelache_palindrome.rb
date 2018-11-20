require 'fdelache_palindrome/version'

# Simple module for palindrome definition
module FdelachePalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

# Include our palindrome on every String
class String
  include FdelachePalindrome
end

# Include our palindrome on every Integer
class Integer
  include FdelachePalindrome
end
