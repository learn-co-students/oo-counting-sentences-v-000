require 'pry'

class String

  def sentence?
    /[.]\z/ === self
  end

  def question?
    /[?]\z/ === self
  end

  def exclamation?
    /[!]\z/ === self
  end

  def count_sentences
    self.split(/[.!?] /).size
  end
end
