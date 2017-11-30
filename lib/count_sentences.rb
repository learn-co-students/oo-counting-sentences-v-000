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
    array = self.split(/[!.?]/) #https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters
    #puts "array = #{array}"
    array.reject!{ |s| s.empty? } #https://stackoverflow.com/questions/5878697/how-do-i-remove-blank-elements-from-an-array
    array.length
  end
end
