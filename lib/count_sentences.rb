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
    sentences = self.scan(/([A-Z]?[A-Za-z,;'\"\s\-]+[.?!])[\s]?/)
    sentences.count
  end

  def count_sentences2
    sentences = self.split(/[.?!]/)
    sentences.delete_if {|sentence| sentence.length == 0}
    sentences.count
  end
end
