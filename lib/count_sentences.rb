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
    @self_2 = self.split(/\.|\?|\!/) #it becomes an array. #count must be formulated to such
    @self_2.delete_if {|x| x == ""}
    @self_2.count
  end
end

#self.split(/\.|\?|\!/).delete_if {|x| x == ""}.count
