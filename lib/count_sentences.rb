require 'pry'

class String

  def sentence? 
    if self.to_s.end_with? (".")
      true
    else 
    false
  end
  end

  def question?
    if self.to_s.end_with? ("?")
          true
        else 
        false
    end
  end

  def exclamation?
    if self.to_s.end_with? ("!")
          true
        else 
        false
    end
  end

  def count_sentences
     self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end