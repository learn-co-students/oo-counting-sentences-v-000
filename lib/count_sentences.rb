require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    if self[-1] == "?"
      return true 
    else 
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true 
    else 
      false
    end
  end

  def count_sentences
    sentences = self.split(/\.+|!+|\?+/)
    sentences.length
  end
end