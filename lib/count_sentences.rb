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
    count_array = self.split(/[.?!]/)
    count = 0
    count_array.each do |a|
      if a != ""
        count+=1
      end
    end
#              binding.pry
    count
  end
end

#"beep boop. bop? hhjgfjg.. jkgkyuguy!".count_sentences
