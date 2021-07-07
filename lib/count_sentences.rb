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
    count = 0
    char_prev = 0
    self.each_char do |char|
      if (char == "." || char == "?" || char == "!") && (char_prev != "." && char_prev != "?" && char_prev != "!")
        count +=1
      end
      char_prev = char
    end
    count
  end
end
