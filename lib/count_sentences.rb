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
    self.split(/\w[?!\.]+/).size
    #we have 1 period, 2 exclamations marks, 1 question mark, and 3 periods
    #sentences can have 0 or more spaces
    #sentences can have 0 or more commas
  end
end
