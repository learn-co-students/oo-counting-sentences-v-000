require 'pry'

class String

  def sentence?
    self.match(/\A.*\.\z/) ? true : false
  end

  def question?
    self.match(/\A.*\?\z/) ? true : false
  end

  def exclamation?
    self.match(/\A.*\!\z/) ? true : false
  end

  def count_sentences
    self.scan(/[.!?]+/).count
  end
end
