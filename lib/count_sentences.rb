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
    sentence_array = self.split(/[?.!]/)
    sentence_array.delete_if{|sent| sent == "!" || sent =="." || sent =="?" || sent == ""}
    #binding.pry
    sentence_array.count
  end
end
