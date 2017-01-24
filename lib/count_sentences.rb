require 'pry'

class String

  def sentence?
    self.match(/\.$/) ? true : false
  end

  def question?
   self.match(/\?$/) ? true : false
  end

  def exclamation?
   self.match(/\!$/) ? true : false
  end

  def count_sentences
    self_array = self.split(/[\!\?\.]\s/)
    self_array.size
  end
end
