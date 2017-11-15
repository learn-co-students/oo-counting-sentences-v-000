require 'pry'

class String
  
  def sentence?
   # use self keyword in this method 
    self.scan(/[!.?]\z/)
    binding.pry
  
   
  end

  def question?

  end

  def exclamation?

  end

  def count_sentences

  end
end