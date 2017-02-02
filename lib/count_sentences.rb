require 'pry'
class String
  def sentence?
    if self.end_with?(".")
      true
#binding.pry
  else
    false
  end
  end

  def question?
    if self.end_with?("?")
      true
#binding.pry
  else
    false
  end
  end

  def exclamation?
    if self.end_with?("!")
      true
#binding.pry
  else
    false
  end
  end

  def count_sentences
    return self.delete(' ').split(/[\.\!\?]+/).count
    #split('.','?', '!').count
    binding.pry
  end
end
