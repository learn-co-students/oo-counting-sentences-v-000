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
    counts = 0
    self.split(/[!.?]/).each {|sentence| counts+=1 if sentence.length>0}
    return counts
  end
end
