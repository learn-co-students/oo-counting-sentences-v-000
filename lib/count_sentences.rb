require 'pry'

class String

  def sentence?
    return self.match(/\.$/) != nil ? true : false
  end

  def question?
    return self.match(/\?$/) != nil ? true : false
  end

  def exclamation?
    return self.match(/\!$/) != nil ? true : false
  end

  def count_sentences
    self.scan(/[\!\.\?]{1,5}/).length
  end
end
