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
    #.reject rejects anything that satifies the block. l
    self.split(/\?|\.|!/).reject {|s| s.empty?}.length
    # binding.pry
  end
end
