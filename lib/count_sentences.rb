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
    sentence_counter = self.split(/(\w+[.]).(\w+[.]).(\w+[?])|(.*[.])(\s.*[!])(\s.*[?])(.*[.])/)
    sentence_counter.reject(&:empty?).length
  end
end