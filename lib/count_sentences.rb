class String

  def sentence?
    self
    self.end_with?(".") ? true : false
  end

  def question?
    self
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self
    if self.end_with?(".") || self.end_with?("!") || self.end_with?("?") #check for all the edge cases
       new_string=[]
       #split the string at every sentence delimiter to singel them out later
       new_string = self.split(/[.?!]/).delete_if do | string_item | #regexp and .split to match specific delimiters
       #don't include any empty spaces that are formed from a double !! etc by deleting empty spaces
       string_item ==""
       end
       new_string.count #counts the strings in the array without the extra space that was deleted
    else
      0
    end
  end

end
