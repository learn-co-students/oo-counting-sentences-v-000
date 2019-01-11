require 'pry'


class String

  def sentence?
    self.end_with?(".")
   #return true
  end

  def question?
    self.end_with?("?")
  #return false
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
