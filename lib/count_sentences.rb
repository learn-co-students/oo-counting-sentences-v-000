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
    container = self.split(/[.!?]/)
    container.reject! {|s| s == ""}
    container.count
  end
end
