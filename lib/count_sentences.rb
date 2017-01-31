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
    str = self.split(/[.?!]/)
    #binding.pry
    str.reject! {|i| i.empty?}
    #binding.pry
    str.count
  end
end

complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

complex_string.count_sentences