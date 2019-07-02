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
    self.split()
    array_string = self.split()
    array_string
    counter = 0
    array_string.each do |word|
      if word.include?("?") | word.include?(".") | word.include?("!")
      counter += 1
      end
    end
counter
  end
  
end