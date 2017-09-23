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
    counts = []
    counts=self.split(/\!|\.|\?/)
    num = counts.size
    counts.each do |it|
      if it.length == 0
        num -=1
      end
    end
    num
  end
end
