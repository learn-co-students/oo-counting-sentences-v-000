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
    testing = self.split(/[.?!]/)
    testing.delete_if do |string|
      string.empty?
    end
    testing.size
  end

end
