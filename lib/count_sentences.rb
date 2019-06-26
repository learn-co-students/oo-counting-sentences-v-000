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
    self.split(/\.|!/).count  # This can be refactored to /\.|\?|\!/
    #(/\.|\?|\!/).delete_if {|w| w.size < 2}.size, This line of code will also let you eliminate empty strings from an array after going through the regex.
  end
end