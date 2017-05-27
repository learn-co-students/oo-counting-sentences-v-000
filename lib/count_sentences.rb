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
  s = self.split(/[.?!]/)
  s.delete_if{ |i| i.length == 0}
  s.count
  end
end
