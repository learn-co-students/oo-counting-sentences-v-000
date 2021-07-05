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
  temp = self.split(/[\\.\\?\\!{2}]/)
  temp.delete("")
  output = temp.count
  return output
  end
end
