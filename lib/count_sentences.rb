require 'pry'

class String

  def sentence?
    self.end_with?(".")? true:false
  end

  def question?
    self.end_with?("?")? true:false
  end

  def exclamation?
    self.end_with?("!")? true:false
  end

  def count_sentences

    number_sentences = self.split(/[.?!]/)
    number_sentences.delete("")
    number_sentences.count
  end
#  binding.pry
end
