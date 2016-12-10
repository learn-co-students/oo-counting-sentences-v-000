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
    array = []
    if self.include?(".") || self.include?("!") || self.include?("?")
      array = self.split(/[.!?]+/)
      return array.count
    else
      return 0
    end
  end
end
