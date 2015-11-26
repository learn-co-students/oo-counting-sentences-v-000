require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    i=0
    sentence_count=0
    while i < self.length
      if self[i]=="." && self[i+1]==" " || self[i]=="!" || self[i]=="?"
      sentence_count+=1
      end
      i+=1
    end
  return sentence_count
end

end