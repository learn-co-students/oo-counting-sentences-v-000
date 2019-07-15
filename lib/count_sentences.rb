require 'pry'


class String


  def initialize
    puts "Hi, my name is #{self}!"
  end

  def sentence?
  if self.end_with?(".")
  return true
else
  false
    end
  end

  def question?
 if self.end_with?("?")
   return true
 else
   false
  end
end

  def exclamation?
    if self.end_with?("!")
    return true
  else
    false
  end
end

  def count_sentences
    i = 0
    self.split(/[?.!]/).each do |word|
      if word != ""
        i += 1
      end
    end
      return i
    end

end
