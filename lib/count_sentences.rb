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
    sentences = self.split(/\.|\?|\!/)  #Regex for multiple arguments
    sentences.delete_if{|x| x.length < 1}  #Remove superficial elements
    sentences.length
  end
end
