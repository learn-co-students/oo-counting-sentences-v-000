require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?") == true
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!") == true
      return true
    else
      return false
    end
  end

  def count_sentences
    sentence_split = self.split(/\w+[\?|\.|!]+/)
    counted_sentence = sentence_split.count
    return counted_sentence
  end
end
