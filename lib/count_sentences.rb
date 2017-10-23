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

    new_array = []

    new_array << self

    new_array.split(/[^\w\d\s]/)

    new_array.count

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
