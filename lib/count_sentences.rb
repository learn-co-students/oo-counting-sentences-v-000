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
    str_array = self.split(/[.?!]/)
    str_array.delete_if{|ele| ele == ""}
    str_array.count
  end
end