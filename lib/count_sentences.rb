require 'pry'

class String


  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    if sentence? == true || question? == true || exclamation? == true
      self_array = self.split(/[.?!]+/)
      sentences = self_array.count
    end

    if sentences == nil
      return 0
    else
      return sentences
    end
  end
end
