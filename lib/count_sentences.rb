require 'pry'

class String

  def sentence?
    if self.scan(/.$/) == ["."]
      true
    else
      false
    end
  end

  def question?
    if self.scan(/.$/) == ["?"]
      true
    else
      false
    end
  end

  def exclamation?
    if self.scan(/.$/) == ["!"]
      true
    else
      false
    end
  end

  def count_sentences
    ps = self.scan(/\.+/)
    es = self.scan(/!+/)
    qs = self.scan(/\?+/)
    return (ps.size + es.size + qs.size)
  end
end
