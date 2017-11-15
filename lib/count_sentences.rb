require 'pry'

class String
  
  def sentence?
   # use self keyword in this method 
    period = self.scan(/[.]\z/)
    period.any?
    binding.pry
  
   
  end

  def question?

  end

  def exclamation?

  end

  def count_sentences

  end
end