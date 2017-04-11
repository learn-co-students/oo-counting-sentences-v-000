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
    array_w_error = self.split(/[!.?]/)
    array_w_error.delete("")
    array_w_error.length

  end
end
