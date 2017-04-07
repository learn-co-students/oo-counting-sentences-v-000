require 'pry'

class String

  def sentence?
    self.end_with?(".") || self.end_with?("!") || self.end_with?("?")
  end

  def question?
    # false
    # true if self.end_with?("?")
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    # false
    # true if self.end_with?("!")
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    no_empty_sentences = self.split(/[.|?|!]/).reject {|sentence| sentence.empty?}
    no_empty_sentences.size
  end
end
