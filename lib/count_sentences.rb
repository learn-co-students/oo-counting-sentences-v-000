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
    x = self.split(/[.!?]/)
    x.delete_if{ |c| c.length == 0}
    x.count
  end
end