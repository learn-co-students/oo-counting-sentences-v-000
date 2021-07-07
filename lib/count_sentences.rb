require 'pry'

class String

  def sentence?
     self.end_with?(".")

  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end


  def count_sentences
    #self.split(/[.!?]{1,3}/).count => my solution
    #here is the most efficient way
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size

    end
  end
