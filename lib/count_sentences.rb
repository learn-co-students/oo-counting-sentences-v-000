require 'pry'

class String

  def sentence?
    if "." == self[-1]
      return true
    end

    false
  end

  def question?
    if "?" == self[-1]
      return true
    end

    false
  end

  def exclamation?
    if "!" == self[-1]
      return true
    end

    false
  end

  def count_sentences
    self.split(/[\.\?!] /).length
  end
end
