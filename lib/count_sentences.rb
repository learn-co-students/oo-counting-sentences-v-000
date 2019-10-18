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

#  def count_sentences
#    phrase = self.split(/[.!?]/)
#    phrase.each {|a| phrase.delete(a) if #a.length == 0}
#    phrase.count
#  end

  def count_sentences
    self.scan(/([A-Z]|[a-z])\w[.!?]/).count    
  end
end