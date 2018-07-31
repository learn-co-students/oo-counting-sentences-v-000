
require "pry"
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
    count = self.split(/\.|\?|!/)
    count.delete_if{|s| s.length == 0 }
    count.length
    #binding.pry
  end
end
