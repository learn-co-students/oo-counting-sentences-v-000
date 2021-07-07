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
    holder = self.split(/[?!.]/)
    total = 0
    holder.each do |item|
      if item != ""
        total += 1
      end
    end
    return total
  end
  
end
