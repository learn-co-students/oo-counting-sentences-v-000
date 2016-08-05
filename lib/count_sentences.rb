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
    #new_array = self.split('.').reject{|s| s.empty? || s == " "}
    #return new_array.length
    string = self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
    return string
  end
end
