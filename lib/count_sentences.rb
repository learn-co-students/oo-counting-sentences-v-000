require 'pry'

class String

  def sentence?
    self.match(/.+[.]/) ? true : false
  end

  def question?
    self.match(/.+[?]/) ? true : false
  end

  def exclamation?
    self.match(/.+[!]/) ? true : false
  end

  def count_sentences
    arr = self.split(/[!.?]/)
    arr.count{|x| x.length > 0}
  end
end
