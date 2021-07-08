require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false 
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    if self.reverse[0] == "!" 
      true 
    else
      false
    end
  end

  def count_sentences
    self.split(/[\?\.\!]\s/).length
  end
end