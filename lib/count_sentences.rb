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
    arr=[]
  arr1=[]
    arr=self.split(" ")
  arr.each do |word|
    if word =~ /[\!\.\?]/
      arr1 << word
    end
  end
    arr1.length
  end


end