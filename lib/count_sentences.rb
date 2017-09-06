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
    #binding.pry
    #new_split_sentence = self.split(/\.|\?|\!|\!!|\.../)
    #new_split_sentence.size
    self.split(/\.|\?|\!|\!!|\.../).delete_if { |word| word.size < 2}.size
  end
end
