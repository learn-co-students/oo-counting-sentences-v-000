require 'pry'

class String

  def sentence?
    period = self.end_with?(".")
    if self.question? || self.exclamation? || period
      return true 
    else 
      return false 
    end 
  end

  def question?
    if self.end_with?("?") 
      return true
    else 
      return false  
    end 
    
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else 
      return false 
    end 
  end

  def count_sentences
    sentences = self.split(/[\.\?\!]\s[a-zA-Z]/)
    sentences.length 
  end
end