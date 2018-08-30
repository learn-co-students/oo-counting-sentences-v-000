require 'pry'

class String

  def sentence? # I should note that the first three methods do not need "self" to work.
    self.end_with? ?.
    
    #OR: self.end_with?(".")
    # With Regex: self.scan(/[.]\z/) == ["."] ? true : false
  end

  def question?
    self.end_with? ??
  end

  def exclamation?
    self.end_with? ?!
  end

  def count_sentences
    self.split(/[.?!]\s/).count
    
    #binding.pry
    # This works, too, but it uses more code and iterates through more elements:
    # self.split(" ").count {|x| x.sentence? || x.question? || x.exclamation?}
    # Equivalently: self.split(" ").count {|x| x.end_with? ?., ??, ?!}
  end
end