require 'pry'

class String

  def sentence?
    self.end_with? (".") || ("!") || ("?")
  end

  def question?
self.end_with? ("?")
  end

  def exclamation?
self.end_with? ("!")
  end

  def count_sentences
num_of_sentences = self.split(/[.?!]/).reject {|string| string.empty?}
return num_of_sentences.length
  end
end
