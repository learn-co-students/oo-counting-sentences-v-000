require 'pry'
# Monkey patching is the practice of adding methods to or altering Ruby's built in classes.

class String

# Instance Method Definitions
  # Define this instance method to return true if the string you are calling it on ends in a period and false if it does not.
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #binding.pry
    # self.split.count
    # eliminate empty strings from an array..reject, delete, empty?
    self.split(/[.!?]\s/).count
  end
end
