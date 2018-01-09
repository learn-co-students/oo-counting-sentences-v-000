require 'pry'

class String

  # attr_accessor :string

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
    self.split(/[.?!]+/).count
    # self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end
