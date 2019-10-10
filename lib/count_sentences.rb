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
      array = self.split
      array.keep_if {|string| string.end_with?(".") || string.end_with?("?") || string.end_with?("!")}
      array.count
  end
end