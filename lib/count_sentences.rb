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
    string_array = self.split(/[.?!]/)
    count = 0

    string_array.each do |element|
      if element != ""
        count += 1
      end
    end

    return count

    return (string_array.length)
  end
end
