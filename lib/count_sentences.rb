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
    string_array = self.split(/\.|\?|\!/)
    string_array.delete_if{|x| x == ""}
    string_array.count
  end
end
