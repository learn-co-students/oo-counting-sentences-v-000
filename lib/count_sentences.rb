require 'pry'

class String

  def sentence?
    self.end_with?(".") if true
  end

  def question?
    self.end_with?("?") if true
  end

  def exclamation?
    self.end_with?("!") if true
  end

  def count_sentences 
    sentences = self.split(/[.?!]/)
    sentences.each do |sentence|
      if sentence == ""
        sentences.delete(sentence)
      end
    end
      #binding.pry
     return sentences.count
  end
end