require 'pry'

class String

  def sentence?
    itself.include?(".")
    
  end

  def question?
    itself.include?("?")

  end

  def exclamation?
    itself.include?("!")

  end

  def count_sentences
    itself.squeeze('?!.').count('?!.')
    
  end
end