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
    self.split(/\.|\?|!/).delete_if {|word| word == ""}.count
    # took the string, split it by its punctuation, then i deleted it if the word
    # equals an empty string "", then i counted the elements
  end
end
