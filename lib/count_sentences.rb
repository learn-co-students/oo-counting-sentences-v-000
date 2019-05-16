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
    ## internet researched solution
    #delimiters = [". ","? ","! "]
    #self.split(Regexp.union(delimiters)).count

    #Flatiron solution
    #self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
    #regex, enclosed by fwd slashes, checks for (escaped) period or question mark or exclamation point
    #delete_if method takes a block where w holds the split values, iterating through to check that there is 2 or more chars
    #size counts the sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
