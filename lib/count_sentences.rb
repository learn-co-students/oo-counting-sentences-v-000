require 'pry'

class String

  def sentence?
    if self.end_with?(".")
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
    
    if self.exclamation? == true || self.question? == true || self.sentence? == true 
     arr = self.split " "
    else 
      arr = []
    end 
    arr.count
  end
end