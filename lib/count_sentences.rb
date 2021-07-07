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
  split_array=self.split(/\.|\?|\!/) #split the string on any and all periods, question marks and exclamation marks
  no_whities=split_array.delete_if {|w| w.size < 2} #eliminate empty strings from an array
  no_whities.size
  end
end