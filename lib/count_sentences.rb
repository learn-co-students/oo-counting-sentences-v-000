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
    # self.scan(/[.!?]/).count - this counts the elipses as 3
    self.split(/[.!?]/).reject {|string| string.empty?}.length #this splits at the elipses to give 4 elements in an array
  end
end
