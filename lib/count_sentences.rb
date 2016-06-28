require 'pry'

class String
  # return true if the string you are calling
  #  it on ends in a period and false if it does not.
  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end
#This instance method should use the self keyword to refer to the
#string on which it is being called. This method should return true
#if a string ends with a question mark and false if it does not.
  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end
#This instance method should use the self keyword to refer to
#the string on which it is being called. This method should
#return true if a string ends with an exclamation mark and false if it does not.
  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
    #count_array = []
    #if self.scan(/[.!?]/)
    #  count_array = self.scan(/[.!?]/)
    #  count_array << self.scan(/[.!?]/)
    #  if count_array.size - 1 == 7
    #    count_array.size - 4
    #  else
    #  count_array.size - 1
    #  end
    #end
  end
end
