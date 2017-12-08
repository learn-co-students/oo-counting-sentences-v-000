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
    sentence_count = 0
    sentences = self.split(/[.?!]/)
    sentences.each {|s| sentence_count += 1 if s != ""}
    sentence_count
  end

end
