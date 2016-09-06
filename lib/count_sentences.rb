require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
  end
  self.end_with?(".")
end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
    self.end_with?("?")
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
    self.end_with?("!")

  end

  def count_sentences
    self.split(/\.{1,}|\?{1,}|\!{1,}/).count
  end
end
