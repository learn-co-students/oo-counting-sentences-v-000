require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    count=0
    i=0
    while i < self.length
      if self[i] == "." || self[i] == "?" || self[i] == "!"
        if self[i-1] =~ /[a-z]/
          count += 1
        end
      end
      i += 1
    end
    count
  end
end
