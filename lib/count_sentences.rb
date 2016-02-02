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
    first_array = self.split(/[.!?]/)
    first_array.delete_if {|val| val.length <= 1}
    sentence_count = first_array.count
    sentence_count

  end
end