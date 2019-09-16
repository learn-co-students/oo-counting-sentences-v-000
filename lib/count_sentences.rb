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
    string_array = self.scan(/[^\.!?]+[\.!?]/).map(&:strip)
    size = string_array.size  
    if size == nil 
      return 0 
    else
      return size
    end  
  end  
end   