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
    sentences = self.scan(/[^\.!?]+[\.!?]/) #scans for strings that don't start with anything other than ".,!,or ?" until it reaches a ".,!,or ?" Scan returns an array of matching strings.

    sentences.count

  end
end 