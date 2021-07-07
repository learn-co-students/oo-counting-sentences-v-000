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
    
   string = self.split(/\.\s|\?\s|\!\s/)
   string.count
  end
end