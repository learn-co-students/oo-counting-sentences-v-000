require 'pry'

class String

  def sentence? #returns true and false
    self.end_with?("?") || self.end_with?(".")

  end

  def question?
    self.end_with?("?") || self.end_with?(".")
  end

  def exclamation?
    self.end_with?("!") || self.end_with?(".")
  end

  def count_sentences
    self.split(/\w[?!.]+(?=\s|\z)/).size
  end
end
