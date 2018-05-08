require 'pry'

class String

  def sentence?

  ("Hi, my name is Sophie.").end_with?(".")
  self.end_with?(".")

  end

  def question?
    ("Hi, my name is Sophie?").end_with?("?")
    self.end_with?("?")
  end

  def exclamation?
    ("Hi, my name is Sophie!").end_with?("!")
    self.end_with?("!")
  end

  def count_sentences

self.squeeze(".?!").split(/[.?!]/).length

  end
end
