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
    self.strip.split(/(\.|\?|\!)/).grep(/\w{2,}/).length
    #binding.pry
  end
end
