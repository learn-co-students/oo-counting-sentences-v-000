require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end 
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    temp = []
    temp = self.split(/[.?!]/)
    temp.count { |i| i.match(/[a-zA-Z]/)}
  end
end