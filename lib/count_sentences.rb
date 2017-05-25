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
#   This works on repl.it but not on Learn IDE for some reason.
#   self.split(/\.|\?|\!/).size
#   This works on repl.it too...so I dunno what the hell is going on.
#   self.split(/\.|\?|\!/) {|i|}.size
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
