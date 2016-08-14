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

    count = self.split(/[.?!]/)
    count.delete("")
    count.length

  end

end
complex ="This, well, is a sentence. This is too!! And so is this, I think? Woo..."

print complex.count_sentences
