require 'pry'

class String

  def sentence?
    self.match(/.*\.\Z/) ? true : false
  end

  def question?
    self.match(/.*\?\Z/) ? true : false
  end

  def exclamation?
    self.match(/.*\!\Z/) ? true : false
  end

  def count_sentences
    self.scan(/.*?[\.\?\!]+/).length
  end
end
