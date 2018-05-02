require 'pry'

class String

  attr_accessor :string

  def sentence?
    if self[-1] == (".")
      true
    else
      false
    end
  end

  def question?
    if self[-1] == ("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == ("!")
      true
    else
      false
    end
  end

  def count_sentences
    counter = 0
    newarray = []
    newarray = self.split(" ")
    newarray.each do | words |
      if words[-1] == "." || words[-1] == "!" || words [-1] == "?"
        then counter +=1
      end
    end
    counter
  end

end
