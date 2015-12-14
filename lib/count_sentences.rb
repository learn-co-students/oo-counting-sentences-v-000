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
    x = self.split(/[.!?]/).reject { |s| s.empty? }
    x.length
    #x.each do |i|
      #if i.length > 0
    #end
  end
end