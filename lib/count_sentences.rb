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
    counter = 0
    array = self.split(/[.?!]/)
    array.each do |x|
      if  x != ""
        counter += 1
      end
    end
      counter
end
end
