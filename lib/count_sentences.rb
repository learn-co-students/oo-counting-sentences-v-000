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
    self.split(/[.!?]+/).count 
    # y = []
    # self.split.each do |x|
    #   y << x if x.end_with?(".") || x.end_with?("?") || x.end_with?("!") == true
    # end
    # y.count
  end
end