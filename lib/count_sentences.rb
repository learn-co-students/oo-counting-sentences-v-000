require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    arr = self.split
    num = 0
    arr.each do |word|
      num +=1 if word[-1] == "." || word[-1] == "?" || word[-1] == "!"
    end
    num
  end
end
