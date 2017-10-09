require 'pry'

class String

  def sentence?
  if self.end_with?(".")
    true
  else
    false
  end
  end

  def question?
if self.end_with?("?")
  true
else
  false
  end
  end

  def exclamation?
if self.end_with?("!")
  true
else
  false
  end
  end

  def count_sentences
    array = []
    string = self.split('')
    string.each_with_index do |x, y|
      if x == "." || x == "?" || x == "!"
        array << x unless string[y-1] == x
  end
  end
  array.length
end
end
