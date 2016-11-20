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
    split_sentences = self.split(/[\!\.\?]/)
    split_sentences.delete("")
    split_sentences.length
  end
end
