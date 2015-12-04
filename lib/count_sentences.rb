require 'pry'

class String

  def sentence?
    # self.match(/\b.*\.$/) ? true : false
    self.end_with?(".")
  end

  def question?
    # self.match(/\?$/) ? true : false
    self.end_with?("?")
  end

  def exclamation?
    # self.match(/\!/) ? true : false
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[?.!]/).grep(/\w+\b/).size
  end
end