require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
     counter = 0 
     array = []
     array = self.split (/[\.!?]+/)
     counter = array.count 
  end
end