require 'pry'

class String




  def sentence?
     "Hi, my name is Sophie.#{self}".end_with?(".")







  end

  def question?
    "What's your name?#{self}".end_with?("?")

  end

  def exclamation?
    "Hi, my name is Sophie!#{self}".end_with?("!")

  end

  def count_sentences
   self.split(/[\.\?!]+/).count

  end
end
