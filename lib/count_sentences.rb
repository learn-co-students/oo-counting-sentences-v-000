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
    sep_string = self.split(/\.|\!|\?/)
    sep_string.delete_if { |sent| sent == "" }
    sep_string.length
  end
end
