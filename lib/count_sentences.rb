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
    array = []
    count = 0

    array = []
   count = 0

   array = self.split(/[.?!]/)
   array.delete_if() {|element| element.empty?}
   count = array.length
  end
end
