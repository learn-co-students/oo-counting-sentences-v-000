require 'pry'

class String

  def sentence?
    self.end_with?(".") #self calls the new instance of the class itself.
    #.end_with() checks strings if they end with something
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #transfer to regex notes later
    #| is or
    #\ escapes in regex
    @sentences_array = self.split(/\.|\?|\!/) #.split can use regex!
    #@sentences_array = self.scan(/\w+\W/)
    #we ran rspec and put pry in the tests
    @sentences_array.delete_if{|item| item == "" || item == " " }
    @sentences_array.length #because we want to see all strings
  end
end
