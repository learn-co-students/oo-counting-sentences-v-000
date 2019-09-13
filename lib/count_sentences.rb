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
    x = self.split(" ")
    count = 0
    x.each do |element|
      if element.sentence? || element.exclamation? || element.question?
        count += 1
      end
    # binding.pry

    end
    return count
  end

end
