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
    sen = self.split
    sen.keep_if {|x| x =~ /[\? . !]/}
    sen.count

  end 
end   