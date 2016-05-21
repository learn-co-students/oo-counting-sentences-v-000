require 'pry'
require 'byebug'

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
    #debugger
    i = 0 
    i2 = 0 
    punctuation_count = [] 
    while i2 < self.length 

      if self[i2].match(/[.?!]/)
        punctuation_count << self[i..i2]
        i = i2 + 1  
      end
    i2 += 1 
    end

    punctuation_count.select { |el| el.length > 1 }.count 
  end

end