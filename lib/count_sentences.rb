

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
    marks = ["!","?","."]
    sentences = []
    if self.include?("?") || self.include?(".") || self.include?("!")
          marks.each {|mark| sentences << self.split(mark)}
            sentences.delete_if do |string|
                     string == " "
          end
    end
    if sentences == []
      return 0 
    end
    if (self.sentence? || self.question? || self.exclamation?) && (self[-2]=="!" || self[-2]=="." || self[-2]=="?")
      return sentences.size + 1
    else
        sentences.size
    end
  end
end

