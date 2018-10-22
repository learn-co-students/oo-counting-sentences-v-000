require 'pry'

class String
  def sentence?
    self.end_with?(".") ? true : false
    #self[-1..-1] == "." ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
    #self[-1..-1] == "?" ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
    #self[-1..-1] == "!" ? true : false
  end

  def count_sentences
    self.scan(/[^\.?!]+[\.?!]*/).length
  end
end
