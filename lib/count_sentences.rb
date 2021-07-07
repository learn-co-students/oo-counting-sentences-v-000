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
  string_array = self.split(/[.!?]/)
  no_empty_strings = string_array.reject { |e| e.empty? }
  no_empty_strings.count 
  end
end