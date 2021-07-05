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
      
    split_self = self.split(/\.|\?|\!/)
    # binding.pry 
    new_value = 0 
    split_self.each do |array|
      if !(array == "")
        new_value += 1 
      end 
    end 
    new_value
  end
end