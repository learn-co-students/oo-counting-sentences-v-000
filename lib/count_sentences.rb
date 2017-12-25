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
    words = self.split(" ")

    words.each do |word|
      if word.sentence?
        counter += 1
      end

      if word.question?
        counter += 1
      end

      if word.exclamation?
        counter += 1
      end
    end
    counter
  end

end
