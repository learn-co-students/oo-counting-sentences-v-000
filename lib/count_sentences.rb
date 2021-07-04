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
    if self.scan(/[.!?]/) == 0 || self == "" || self == " "
      return 0
    else
      self.scan(/[.!?]\s[a-zA-Z]/).size + 1
    end
  end
end