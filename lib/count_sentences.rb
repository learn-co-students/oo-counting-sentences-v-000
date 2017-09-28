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
    self.split(/[!\.\?]\s/).length

    # THE FLATIRON SOLUTION. I THINK MINE MIGHT BE AS GOOD OR BETTER!!!

    # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
