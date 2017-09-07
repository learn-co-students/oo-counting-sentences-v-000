require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  # def end_with?(character)
  #   if character == self[-1]
  #     true
  #   else
  #     false
  #   end
  # end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_array = self.split(/[?!.]/)
    if new_array.length == 0
      return 0
    else
      if new_array.include?("")
        new_array.delete("")
        new_array.length
      else
        new_array.length
      end
    end
  end

end
