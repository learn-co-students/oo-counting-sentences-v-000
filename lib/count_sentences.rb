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
   sentences = self.split()
   counter = 0 
   sentences.each do |word|
      if word.exclamation? || word.question? || word.sentence?
      counter += 1  
      end
    end
    counter
  end
end