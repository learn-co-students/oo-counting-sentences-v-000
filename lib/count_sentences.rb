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
    sentences = self.scan(/[^\.!?]+[\.!?]/).map(&:strip) #scan for punctuation, map to array
    sentences.count
  end
end