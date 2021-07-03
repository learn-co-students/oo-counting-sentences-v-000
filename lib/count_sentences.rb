require 'pry'

class String

  def sentence?
    if self.end_with? (".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with? ("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.end_with? ("!")
      true
    else
      false
    end
  end

  def count_sentences
    x = self.split(' ')
    x.count {|element| element.end_with?('.', '?', '!')}
  end
end
