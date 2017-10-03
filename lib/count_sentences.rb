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
    new_array=self.split(/[.?!]/)
    new_array.delete_if{|potential_sentence| potential_sentence == ""}
    new_array.length
  end
end
