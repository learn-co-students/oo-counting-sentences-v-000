require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    #self.split(".")
    #self.split("?")
    #self.split("!")
    sentences = self.split(/[.?!]/)
    sentences = sentences.reject(&:empty?)
    sentences_count = sentences.count
  end
end
