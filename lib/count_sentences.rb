require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      false
    end
  end

  def count_sentences
    newer = self.split(/\b?\.\s|\?\s|\!\s/)
    newer.count
    if newer.count == 0
      return 0
    else
      newer.count


   end
  end
end
