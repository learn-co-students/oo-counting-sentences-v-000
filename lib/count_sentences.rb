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
    sentence_array = []
    sentence_array = self.split(/[!?.]/)
    sentence_array = sentence_array.reject { |x| x.empty? }
    sentence_array.length
  end
end
