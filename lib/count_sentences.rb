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
    punctuation_found = []
    self.split.each do |word|
      if word.end_with?(".", "!", "?")
        punctuation_found << word
      end
    end
    punctuation_found.count
  end
end
