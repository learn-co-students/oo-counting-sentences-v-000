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
    sentences_array =[]
    if self.include?("?") || self.include?(".") || self.include?("!")
    sentences_array = self.split("?")
    sentences_array << self.split("!")
    sentences_array << self.split(".")  
    end
    return sentences_array.length
  end
end