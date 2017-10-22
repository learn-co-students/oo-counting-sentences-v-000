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
    array = self.split(/[.!?]/)
    final_array = []
    array.each do |item|
      final_array<<item if item!=""
    end
    final_array.length
  end
end
