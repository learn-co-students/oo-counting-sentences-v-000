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
    #need to split the string based on multiple delimiters: ?, ., !
    #can you use a regex to return the matches
      #regex - ends with /[.!?]/
    arr = self.split(/[.!?]/)
    arr.delete_if {|item| item == ""} #delete empty items
    arr.length
  end
end
