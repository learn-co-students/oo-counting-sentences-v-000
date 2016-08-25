require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false   
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
   array = []
    self.split(" ").collect do |word|
     if word.end_with?(".", "?", "!")
      array << word
     end   
    end
   array.count
  end
end