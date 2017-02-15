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
    sentences = self.split(/[.?!]/)
    sentences.each do |sentence|
      if sentence == ""
        sentences.delete(sentence)
      end
    end
    count = sentences.count
    # binding.pry
    count
  end

end
