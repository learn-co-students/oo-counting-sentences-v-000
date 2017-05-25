require 'pry'

class String

  def sentence?
    self.end_with?(".")

  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #if self.scan(/\.|\?|\!/).count == 0
      #return 0
    #else
      #
    #binding.pry
    #end
    #self.scan(/\.|\?|\!/).count
    scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end
