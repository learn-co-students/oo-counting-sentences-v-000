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
    # complete_sentences = []
    if self.exclamation? == true || self.question? == true || self.sentence? == true
      self.squeeze('.!?').split(/[?.!]/).count
      #.reject(&:blank?)
      #binding.pry
    else 0
    end
  end


end