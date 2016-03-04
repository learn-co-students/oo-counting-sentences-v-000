require 'pry'

class String

  def sentence?
   self.scan(/\.$/)!=[] ? true : false
  end

  def question?
    self.scan(/\?$/)!=[] ? true : false
  end

  def exclamation?
    self.scan(/\!$/)!=[] ? true : false
  end

  def count_sentences
    self.scan(/\b\w+[\.\?\!]/).length
  end
end