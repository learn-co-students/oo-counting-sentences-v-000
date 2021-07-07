require 'pry'

class String

  def sentence?
    self.scan(/[.]\z/).empty? ? FALSE : TRUE
  end

  def question?
    self.scan(/[?]\z/).empty? ? FALSE : TRUE
  end

  def exclamation?
    self.scan(/[!]\z/).empty? ? FALSE : TRUE
  end

  def count_sentences
    self.scan(/[a-zA-Z0-9][!?.]/).count
  end
end