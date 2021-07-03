require 'pry'

# This is monkey patching, anti-pattern
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
    self.split(/[.!?]/).delete_if { |s| s.length == 0 }.length
  end
end
