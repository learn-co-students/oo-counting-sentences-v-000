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
    sentences = []
    sentences = self.split(/[!?.]/)
    string = sentences.collect do |string|
      if string == ""
        sentences.delete(string)
      else
        string
      end
    end
    string.count
  end
end
