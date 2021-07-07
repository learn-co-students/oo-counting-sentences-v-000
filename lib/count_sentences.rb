require 'pry'

class String

  def sentence?
    if self[-1]=="!"||self[-1]=="!"||self[-1]=="."
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
    split_strings = self.split(/[!?.]+/)
    split_strings.size
  end
  
end