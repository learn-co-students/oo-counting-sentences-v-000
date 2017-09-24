require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.\s|\?\s|!\s/).count
  end
end
