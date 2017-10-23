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

  def count_sentences(sentences_string)
    sentences_string = self.count
    if self.end_with?(". ")
      self.split(". ")
    elsif self.end_with?("? ")
      self.split("? ")
    elsif self.end_with?("! ")
      self.split("! ")
    end
    sentences_string
  end
end
