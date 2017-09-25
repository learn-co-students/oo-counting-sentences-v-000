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
    ary = []
    ary << self.split(/[.!?]/)
    ary = ary.flatten
    ary.delete("")
    ary.length
  end
end
