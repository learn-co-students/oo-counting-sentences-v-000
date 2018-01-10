require 'pry'

class String

  def sentence?
    self.end_with?(".") ? (return true) : (return false)
  end

  def question?
     self.end_with?("?") ? (return true) : (return false)
  end

  def exclamation?
    self.end_with?("!") ? (return true) : (return false)
  end

  def count_sentences
    self.split(/[\.?!]/).reject {|x| x.empty?}.count
  end
end
