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
    text = self.gsub(/[?!]/, '.')
    text = text.split('.')
    text.delete("")
    text.length 
  end
  
end