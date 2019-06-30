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
    sentence_array = self.split(/[.?!]/) 
    sentence_array.each do | sentence |
      if sentence == ""
        sentence_array.delete(sentence)
      end
    end
    sentence_array.count
  end
  
end