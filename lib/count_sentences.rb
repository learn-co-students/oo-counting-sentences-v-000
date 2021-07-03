require 'pry'

class String

  def sentence?
    self.end_with?("!") || self.end_with?("?") || self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    total_sentences = self.split(/\.|\?|\!/)
    total_sentences.each do |sentence|
      if sentence = "" || " "
        total_sentences.delete(sentence)
      end
    end
    total_sentences.length
  end
end
