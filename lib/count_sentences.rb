require 'pry'

class String

#returns true if the string youa re calling this method on ends in a period
  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

#returns true if the string you are calling this method on ends in question mark
  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

#returns number of sentences in string
  def count_sentences
    self.split(/[.?!]+/).count
    end
  end
