require 'pry'

string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

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
    string_array = self.split(/[".?!"]/).reject(&:empty?).count
  end
end