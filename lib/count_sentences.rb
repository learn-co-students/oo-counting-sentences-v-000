
class String

  def sentence?
    if end_with?(".")
      true 
    else 
      false 
    end 
    
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    self.split(/[.!?]/).count {|string|!string.empty?}
  end
end