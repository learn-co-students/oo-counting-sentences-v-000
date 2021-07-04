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
    self.split(/[.?!]+/).grep(/\S/).count
    # self.split(/\.|\?|\!/).reject{|w| w.empty?}.size
    #self.split(/\.|\?|\!/).count || self.split(/\.|\?|\!/).
  end
end
