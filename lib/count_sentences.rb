require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    counts = []
    counts = self.split(/\.|!|\?/)
    num = counts.size
    counts.each do |sentence|
      if sentence.length == 0
        num -= 1
      end
    end
    num
  end
end
