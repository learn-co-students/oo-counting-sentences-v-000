require 'pry'

class String

  def sentence?
    if self.match(/.*\./) != nil
      return true
    else
      return false
    end
  end

  def question?
    if self.match(/.*\?/) != nil
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.match(/.*!/) != nil
      return true
    else
      return false
    end
  end

  def count_sentences
    sentences = self.split(/[.?!]/)

    sentences.delete_if {|sentence| sentence.length == 0}

    return sentences.length
  end
end
