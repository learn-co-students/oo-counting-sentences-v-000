require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else
      return false
    end

  end

  def question?
    if self.end_with?("?") == true
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!") == true
      return true
    else
      return false
    end
  end

  def count_sentences
    array= self.split(/[.!?]/)
    array.count { |x| x != nil && x != "" }

    # array.map do |element|
    #   if element== nil || ""
    #     array.delete(element)
    #   end
    # end
    # return array.length

  end

end
