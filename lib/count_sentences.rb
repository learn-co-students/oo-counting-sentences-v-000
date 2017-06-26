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
    string = self.scan(/(\w+|\s)[!.?]/)
    num = string.count
    num
  end
end

a = "string! nope! nope."
a.question?
a.sentence?

a.count_sentences
