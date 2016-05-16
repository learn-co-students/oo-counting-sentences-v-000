require 'pry'

class String

  def sentence?
    #self.end_with?(".")
    self[-1]=="."? true : false
  end

  def question?
    self[-1]=="?"? true:false
  end

  def exclamation?
    self[-1]=="!"? true:false
  end

  def count_sentences
    return self.split(/\.|\?|\!/).delete_if {|var| var.size < 2}.size
  end
end
