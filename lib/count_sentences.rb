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
    new_self = self.split(/[.|...|?|!!]/)
    new_self.delete_if{|string| string == ""}
    new_self.count
  end

end
