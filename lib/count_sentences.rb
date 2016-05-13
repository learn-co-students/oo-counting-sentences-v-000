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
    self.scan(/(\?|\.|\!)+(\s|$)/).length #=> http://rubular.com/r/3Ca2BYu0gz
  end
end
