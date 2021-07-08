require 'pry'

class String

  def sentence?
    self.scan(/\.$/).length > 0
  end

  def question?
    self.scan(/\?$/).length > 0
  end

  def exclamation?
    self.scan(/\!$/).length > 0
  end

  def count_sentences
    self.scan(/[\.\!\?]+/).length
  end
end
