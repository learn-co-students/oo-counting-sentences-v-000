require 'pry'

class String

  def sentence?
    a = self.split("")
    a.last == "."
  end

  def question?
    a = self.split("")
    a.last == "?"
  end

  def exclamation?
    a = self.split("")
    a.last == "!"
  end

  def count_sentences
    x = []
    a = self.split
    a.each do |word|
      if word.include? "."
        x << word
      elsif word.include? "?"
        x << word 
      elsif word.include? "!"
        x << word
      end
    end 
      x.size 
  end
  
end