require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    if self.end_with?("?")
      true 
    else
      false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false 
    end 
  end

  def count_sentences
    new = []
    new = self.split(/[!.?]/)
    new.reject {|i| i.nil? || i == ""}.count
    #new.count 
    #binding.pry 
  end
end