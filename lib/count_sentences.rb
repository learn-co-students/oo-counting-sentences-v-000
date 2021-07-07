class String
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?") #if else is not needed, because method itself is true or false
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
  self.split(/\b[.!?]{1,}/).count #practicethismore
  end
end