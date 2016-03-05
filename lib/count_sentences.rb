require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    #self.split(".").size   this only works for simple cases
    sentence_enders = [".","!","?"]
    count = 0
    sentence_enders.each do |ender|
      count += self.squeeze(ender).scan(ender).size #pretty sure they want you to use regex or something instead of sqeeze lol
      #like squeeze is probably something you dont know about unless you look up something for this type of problem
    end
    count
  end
end