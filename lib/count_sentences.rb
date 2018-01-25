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
    sentences = self.split(/[.!?]/)
    count = 0
    sentences.each do |sentence|
      if sentence.match(/[a-zA-z]/) != nil
        count +=1
      end
    end
    count
  end
end