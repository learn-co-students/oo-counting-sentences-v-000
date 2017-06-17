require 'pry'

class String
  attr_accessor :sentence, :question, :exclamation

  def sentence?
    self.end_with?(".") == true
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if { |word| word.size < 2}.size
  end
end
