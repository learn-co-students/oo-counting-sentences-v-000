require 'pry'

class String
  
  def sentence?
   # use self keyword in this method 
    period = self.scan(/[.]\z/)
    period.any?
  end

  def question?
    self 
  end

  def exclamation?

  end

  def count_sentences

  end
end