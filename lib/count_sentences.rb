require 'pry'

class String

  def sentence?
    self.end_with?(".") #To check if the sentence ends with a period
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split = []
    split = self.split(/[\.?!]\W+/)
    #binding.pry
    split.count
  end
end
