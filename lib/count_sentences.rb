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
    # self.scan(/(\?|\.|\!)+(\s|$)/).length #=> http://rubular.com/r/3Ca2BYu0gz
    self.split(/\?|\.|\!/).delete_if { |letters| letters.length < 2 }.length
  end
end

# "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
