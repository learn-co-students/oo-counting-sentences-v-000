require 'pry'

class String

#return true if the string you are calling it on ends in a period and false if it does not.
  def sentence?
    self.end_with?(".")
  end

#This method should return true if a string ends with a question mark and false if it does not.
  def question?
    self.end_with?("?")
  end

#This method should return true if a string ends with an exclamation mark and false if it does not.
  def exclamation?
    self.end_with?("!")
  end

#returns the number of sentences in a string
#returns zero if there are no sentences in a string
#returns the number of sentences in a complex string
  def count_sentences
    self.split.count { |word| word.sentence? || word.question? || word.exclamation? }
  end
end
