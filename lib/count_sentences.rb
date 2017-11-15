require 'pry'

class String

  attr_accessor :sentence
  
  def sentence?
   # use self keyword in this method 
    self
    binding.pry
    end
   
  end

  def question?

  end

  def exclamation?

  end

  def count_sentences

  end
end