require 'pry'

class String

  def sentence?
    self.end_with?('.') ? true : false 
  end

  def question?
    self.end_with?('?') ? true : false 
  end

  def exclamation?
    self.end_with?('!') ? true : false 
  end

   def count_sentences
    divide_string =self.split(/\w[.?!]\s[A-z]|\w[.?!]\s\z|\w[.?!][..]/)
    
    divide_string.size
    
  end
end