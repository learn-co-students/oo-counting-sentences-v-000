require 'pry'

class String
  attr_accessor :name

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
    new_array = self.split(/[.?!]+/)
    new_array.delete(".")
    new_array.delete("?")
    new_array.delete("!")

    new_array.length


  end
end
