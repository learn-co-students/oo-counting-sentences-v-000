require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

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

  def count_sentences
    array1 = self.split(". ")
    array2 = self.split("? ")
    array3 = self.split("! ")
    if array1.length == 0 && array2.length ==0 && array3.length ==0
      count = 0
    else
      count = array1.length + array2.length + array3.length - 2
    end
  end
end
