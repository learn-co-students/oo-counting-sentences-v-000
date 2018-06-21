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
    # if self == "" || self == 0
    #   self.delete
    # else
    self.split(/[.?!]/).delete_if { |e| e == "" }.count
    # end
      # if complex_string.include?("")
      #   complex_string.delete("")
      # end
  end

end
