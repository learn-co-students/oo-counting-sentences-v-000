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
    split_self = self.split(/\.|\?|\!/)
    value = 0
    split_self.each do |array|
      if !(array == "")
        value += 1
      end
    end
    value
   end

end
