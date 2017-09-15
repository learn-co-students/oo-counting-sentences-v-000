require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    return false if !(self.end_with?("."))
  end

  def question?
    return true if self.end_with?("?")
    return false if !(self.end_with?("?"))
  end

  def exclamation?
    return true if self.end_with?("!")
    return false if !(self.end_with?("!"))
  end

  def count_sentences
    count = self.split(/\.|\?|\!!/).length
    count
  end
end
