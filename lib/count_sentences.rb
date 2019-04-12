require 'pry'

class String

  def sentence?
    if self[self.length-1] == "."
     return true
   else
     return false
    end
  end

  def question?
if self[self.length-1] == "?"
  return true
else
  return false
end
  end

  def exclamation?
    if self[self.length-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    i = 0
    count = 0
    while i < self.length
      if(self[i] == "." || self[i] == "!" || self[i] == "?")
      if(self[i] == self[i+1])
        count += 0
      else
        count += 1
      end
      end
      i += 1
    end #end while
   count #will return number of sentenses
   end
end
