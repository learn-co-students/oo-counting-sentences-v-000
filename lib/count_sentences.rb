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
    sentence_array = self.split(/(?<=[.?!;])\s+(?=\p{L})/)
    if sentence_array.count >= 0
      return sentence_array.count
    else
      return 0
    end
  end
end
