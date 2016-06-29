require 'pry'

class String

  def sentence?
    if !self.end_with?(".")
      return false
    else
      return true
    end
  end

  def question?
    if !self.end_with?("?")
      return false
    else
      return true
    end
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end

end
