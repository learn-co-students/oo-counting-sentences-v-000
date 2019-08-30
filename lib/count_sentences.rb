require 'pry'

class String

  def sentence?
    self.end_with?(".")  ? true : false
  end

  def question?
    self.end_with?("?")  ? true : false
  end

  def exclamation?
    self.end_with?("!")  ? true : false
  end

  def count_sentences
    new_array =  self.split(/[.?!]/)
    new_array.delete_if {|sentence| sentence.empty?}
    new_array.length
  end
end
string = String.new
 string.count_sentences
