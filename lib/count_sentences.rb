require 'pry'

class String

  def sentence?
    self.scan(/[?!.]/).count != 0
  end

  def question?
    self.scan(/[?]/).count != 0
  end

  def exclamation?
    self.scan(/[!]/).count != 0
  end

  def count_sentences
    self.scan(/\w[?.!]/).count
  end
end