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
    self.split(/\.|\?|!/).delete_if{|x| x.size == 0}.length
  # self a.k.a is used to refer to the class
  # regex  to config /select the right punctuation to fit out array
   # x can be anything
   # split is a array of sentences
# binding.pry
  end
end
