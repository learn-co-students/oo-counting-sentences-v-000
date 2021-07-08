require 'pry'

class String

  def sentence?
    return true if self.end_with?('.')
    else return false
  end

  def question?
    return true if self.end_with?("?")
    else return false
  end

  def exclamation?
    return true if self.end_with?("!")
    else return false
  end

  def count_sentences
    solution = 0
    solution = self.split(/[^\s][.!?]/).length
  end
end