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
    string_array = Array.new
    word_array = Array.new
    words = String.new
    counter = 0
    string_array = self.split(" ")
    string_array.each do |word|
      word_array = word
      if word_array.end_with?(".") || word_array.end_with?("?") || word_array.end_with?("!")
        counter += 1
      end
    end
    counter
  end
end
