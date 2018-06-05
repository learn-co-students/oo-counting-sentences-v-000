require 'pry'

class String

  def sentence?
    self.end_with?(".");
  end

  def question?
    self.end_with?("?");
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/[.?!]/)
    no_empty_sentences = sentences.reject{|sentence| sentence == ""}
    no_empty_sentences.length
  end
end
