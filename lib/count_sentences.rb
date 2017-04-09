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
    #use regilar express to split the sentences if ! . or ? is present into an array
  sentence = self.split(/[!.?]/)
  #use reject method to not include empty strings in the array
  sentence.reject!(&:empty?)
  #use count method to count the strings in the array
  sentence.count
  end

end
