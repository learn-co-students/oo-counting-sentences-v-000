require 'pry'

class String

  def sentence?
    self.match(/\p{P}\z/) ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/[.?!+]/).count { |sentence| sentence != ""}
  end
end
