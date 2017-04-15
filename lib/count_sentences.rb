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
    counter = 0
    array = self.split("")

    array.each_with_index do |char, index|
      if (char == "." || char == "?" || char == "!") && (array[index - 1] != char)
        counter += 1
      end
    end
    counter
  end
end
