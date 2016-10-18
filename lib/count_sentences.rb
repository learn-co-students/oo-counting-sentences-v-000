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
    answer = []
    new_self = self.split(" ")
    answer << new_self.grep(/.[.!?]$/)
    return answer.flatten.count
  end
end
