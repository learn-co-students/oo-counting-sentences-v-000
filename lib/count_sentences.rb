require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else return false
    end
    self.sentence?
  end

  def question?
    if self.end_with?("?")
      return true
    else return false
    end
    self.question?
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else return false
    end
    self.exclamation?
  end

  def count_sentences
    sentences = []
    self.split(/\.|\?|\!/).each do |x|
      if x != ""
        sentences << x
      end
    end
    sentences.length
  end
end
