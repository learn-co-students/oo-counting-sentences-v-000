require 'pry'

class String

  def sentence?
    #if sentence ends in period = true
    #if sentence ends in anything else return false
    self.end_with?(".")? true : false 
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
  
    sentence_array = self.split(/[.?!|...|!!]/)
    sentence_array.delete("")
    return sentence_array.length

  end
end