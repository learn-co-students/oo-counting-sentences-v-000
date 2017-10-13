require 'pry'

class String

def sentence?
    if self.match(/[\.]\z/)
       return true
    else
      return false
end
end

def question?
  if self.match(/[\?]\z/)
       return true
  else
      return false
end
end

def exclamation?
  if self.match(/[\!]\z/)
         return true
  else
        return false
  end
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end
