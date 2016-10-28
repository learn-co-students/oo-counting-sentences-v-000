require 'pry'

class String

  def sentence?
    self[self.length-1]=='.'
  end

  def question?
    self[self.length-1]=='?'
  end

  def exclamation?
    self[self.length-1]=='!'
  end

  def count_sentences
     count=0
     for i in 1..(self.length-1)
       if (self[i]=='.'||self[i]=='?'||self[i]=='!')&&
         !(self[i-1]=='.'||self[i-1]=='?'||self[i-1]=='!')
         count+=1
       end
     end
     count
  end
end
