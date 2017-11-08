require 'pry'

class String

  def sentence?
    if self[self.size-1] == "."
      true
    else
      false
    end

  end

  def question?
    if self[self.size-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[self.size-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    output = self.scan(/[a-z][.!?]/)

  output.size
end
end
