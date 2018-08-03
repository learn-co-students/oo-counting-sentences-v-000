require 'pry'

class String

#write a method that returns true if a string ends with a period, otherwise false.
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
self.split(/[.?!] /).count
  end
end
