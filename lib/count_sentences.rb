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
    array =[]
    count = 0
    array = self.split(/[!.?]/)
    array.each do |sentence|
      if sentence.length > 1
        count +=1
      end
    end
    count
  end
end
