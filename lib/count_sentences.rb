require 'pry'

class String

  def sentence?

     if self.end_with?(".")
      return true
     end
      false
  end

  def question?
    puts self
     if self.end_with?("?")
      return true
     end
      false
  end

  def exclamation?
    puts self
     if self.end_with?("!")
      return true
     end
      false
  end

  def count_sentences
    array = self.split(/[.!?]/)
    array.delete ""
    return array.count

  end
end
