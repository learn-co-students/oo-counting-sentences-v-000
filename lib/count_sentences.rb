require 'pry'

class String

  def sentence?
    self.scan(/([\w]{1}[^.?!]+[.?!]{1})/).join == self
  end

  def question?
    self.scan(/([\w]{1}[^?]+[?]{1})/).join == self
  end

  def exclamation?
    self.scan(/([\w]{1}[^!]+[!]{1})/).join == self
  end

  def count_sentences
    self.scan(/([\w]{1}[^.?!]+[.?!]{1})/).length
  end
end