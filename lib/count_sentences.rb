require 'pry'

class String

  def sentence?
    self.scan(/\W$/) == [] ? false : true
  end

  def question?
    self.scan(/[?]$/) == [] ? false : true
  end

  def exclamation?
    self.scan(/[!]$/) == [] ? false : true
  end

  def count_sentences
    sentence = []
    sentence = self.scan(/(\w[.?!])/)
    sentence.length
  end
end