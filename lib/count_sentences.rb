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
      stnArray = self.split(/[.!?]/)
      stnArray.delete("")
      stnArray.delete(" ")

      return stnArray.length
  end
end
