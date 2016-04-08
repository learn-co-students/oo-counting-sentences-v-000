require 'pry'

class String

  def sentence?
    self.end_with?(".")
    #binding.pry
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!!/).length
    #binding.pry
  end
end