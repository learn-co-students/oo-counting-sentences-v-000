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
    count = 0
    sentences = self.split(/\.|!|\?/).reject { |c| c.empty? }
    count = sentences.length
    return count
  end

end
