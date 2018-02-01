require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?") == true
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!") == true
      true
    else
      false
    end
  end

  def count_sentences
    split_string = self.split(/[.?!]\s/)
    split_string.count
  end
end
