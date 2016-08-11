require 'pry'

class String

  def sentence?
    self.strip[-1] == '.' ? true : false
  end

  def question?
    self.strip[-1] == '?' ? true : false
  end

  def exclamation?
    self.strip[-1] == '!' ? true : false
  end

  def count_sentences
    self.scan(/\b[\w\W&&[^\.!?]]*[\.!?]+/).length
  end
end