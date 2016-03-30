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
    words = self.split(" ")
    count = 0
    words.each do |word|
      if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
        count += 1
      end
    end
    return count
  end
end