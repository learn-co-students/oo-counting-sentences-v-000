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
      count_sent = self.split(/[?|.|!]/)

      count_sent.delete("")
      count_sent.count
  end
end
