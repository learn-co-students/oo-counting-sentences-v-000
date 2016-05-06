require 'pry'

class String

  def sentence?
    self.end_with?(".")

    # return true if the string you are 
    #calling it on ends in a period and 
    #false if it does not
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences   
    self.split(/[\.!?]/).delete_if {|x| x==""}.count
  end

end