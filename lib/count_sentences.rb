require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end
  

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    array = []
    self.split(/[!.?]+/).each do |item|
      array << item
    end
    if array.length > 0
      return array.length
    else
      return 0
    end
  end


end