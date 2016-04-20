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
   @@words = []
    self.split(/[?!.]/).map do |word|
      if word == ""
        word.delete
      else
      	@@words << word
      end
    end
    @@words.count
    #binding.pry
  end

end