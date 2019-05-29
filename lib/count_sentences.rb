require 'pry'

class String

  def sentence?
      self.end_with?(".")? true : false
  end

  def question?
      self.end_with?("?")? true : false
  end

  def exclamation?
      self.end_with?("!")? true : false 
  end

  def count_sentences
#      binding.pry
      if self.sentence? == true || self.question? == true || self.exclamation? == true
         array = self.split(/[.?!]/) 
      else 
          array = []
      end
      array = array.reject {|c| c.empty?}
      array.count
  end
    
end