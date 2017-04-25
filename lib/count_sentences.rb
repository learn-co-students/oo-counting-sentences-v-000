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
    result = self.split.collect do |word|
      word.end_with?("!", "?", ".")
    end
    result.count(true)
  end
end
