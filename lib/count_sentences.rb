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
    if self.ends_with?(". ")
      self.split(". ")
      # if self.ends_with?(". ")
      #   self.split(". ")
  end
end

binding.pry
