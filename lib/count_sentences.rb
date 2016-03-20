require 'pry'

class String

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
    self.split(/\?|\.|\!/).delete_if {|word| word.length < 2}.count
  end
end

#find all words in the array that are less than 2 characters. 
