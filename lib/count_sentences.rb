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
    sentence_num = []
    sentence_num = self.split(/[^\.!?]/).reject(&:empty?)
    sentence_num.count
  end
end