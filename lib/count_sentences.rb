require 'pry'

class String

  def sentence?
    self.end_with?(".") != false
  end

  def question?
    self.end_with?("?") != false
  end

  def exclamation?
    self.end_with?("!") != false
  end

  def count_sentences
    self.split.count {|element| element.sentence? || element.question? || element.exclamation?}
    #if self.sentence? === true || self.question? === true || self.exclamation? === true
    #  self.split.count
  end
end
