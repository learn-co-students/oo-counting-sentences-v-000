require 'pry'

class String

  def sentence?
    # my original code
    # return self.match(/\.$/) != nil ? true : false

    # refractored code
    self.end_with?(".")
  end

  def question?
    # original code
    # return self.match(/\?$/) != nil ? true : false
    self.end_with?("?")
  end

  def exclamation?
    # original code
    # return self.match(/\!$/) != nil ? true : false
    self.end_with("!")
  end

  def count_sentences
    self.scan(/[\!\.\?]{1,5}/).length
  end
end
