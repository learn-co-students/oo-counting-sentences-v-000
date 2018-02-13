require 'pry'

class String

  def sentence?
     if self.end_with?(".") then true else false
  end
end

  def question?
    if self.end_with?("?") then true else false
  end
end

  def exclamation?
    if self.end_with?("!") then true else false
  end
end

  def count_sentences
    count = self.scan(/\b[.?!]/i)
    count.size
end
end
