require 'pry'

class String
  attr

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
    count = self.split(/[!?.]/)
    array = []
    count.each do |item|
      if item == ""
      
      else 
      array << item 
      end 
    end 
    array.size
  end 
  
end