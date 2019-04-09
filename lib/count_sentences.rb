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
   sentence_count = self.split(/[.?!]/).reject {|string| string.empty?} # reject {|item| block } → new_ary
#Returns a new array containing the items in self for which the given block is not true. The ordering of non-rejected elements is maintained.
   return sentence_count.length
  end
end
