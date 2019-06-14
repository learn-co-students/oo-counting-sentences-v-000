require 'pry'

class String

  def sentence?
    return true if self.end_with?(".") else false
  end

  def question?
    return true if self.end_with?("?") else false
  end

  def exclamation?
    return true if self.end_with?("!") else false
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end