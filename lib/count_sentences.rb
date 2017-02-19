require 'pry'

class String

  def sentence?
    bool = self.end_with?(".")
    bool
  end

  def question?
    bool = self.end_with?("?")
    bool
  end

  def exclamation?
    bool = self.end_with?("!")
    bool
  end

  def count_sentences
    sentences = self.split(/[.?!]/)
    sentences.each do |e|
      if e.length == 0
        sentences.delete(e)
      end 
    end
    sentences.count
  end
end
