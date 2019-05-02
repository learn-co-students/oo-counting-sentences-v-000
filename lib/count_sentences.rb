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
    split_string = self.split(/[!+.+?+]/)
    array = split_string.reject { |c| c.empty? }
    array.count
  end

end
