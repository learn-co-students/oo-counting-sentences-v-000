require 'pry'

class String

  attr_accessor :sentence, :question, :exclamation, :count_sentences

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
    self.split(/[!.?]+/).count
  end

end
