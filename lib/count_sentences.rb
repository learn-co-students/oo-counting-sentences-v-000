# require 'pry'

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
    self.split(/[^\w\d\s]/).count
  end

end

#
#
#
#
# new_array << self
# new_array.count

# if self.end_with?(". ") || self.end_with?("? ") || self.end_with?("! ")
#   self.split(". ") && self.split("? ") && self.split?("! ")
#
# self.each {|sentence|
#
# new_array << sentence}
