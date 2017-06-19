require 'pry'

class String

  def sentence?
    self.end_with?(".")

  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    self.split(/[\.{1}\!{1}\?{1}][^.{3,}!{3,}?{3,}]/).count
  end
end
