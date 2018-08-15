require 'pry'

class String

  def sentence?
    return true if self[self.length - 1] == "."
    return false
  end

  def question?
    return true if self[self.length - 1] == "?"
    return false
  end

  def exclamation?
    return true if self[self.length - 1] == "!"
    return false
  end

  def count_sentences
    return self.split(/\.|\?|\!/).delete_if {|i| i.size < 2}.count
  end
end
