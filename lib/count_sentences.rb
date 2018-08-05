require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    elsif !self.end_with?(".")
      return false 
    end 
  end

  def question?
    if self.end_with?("?")
      return true 
    elsif !self.end_with?("?")
      return false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    elsif !self.end_with?("!")
      return false 
    end 
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).count
  end

end