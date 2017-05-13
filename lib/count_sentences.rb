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

  self.split(/[?!.]/).tap{|arr| arr.delete("")}.length
  end

end
