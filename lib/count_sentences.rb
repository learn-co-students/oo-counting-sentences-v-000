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
    sentences = 0
    words.each do |word|
      sentences += 1 if (word.question? || word.sentence? || word.exclamation?)
    end
    sentences
  end
  
end