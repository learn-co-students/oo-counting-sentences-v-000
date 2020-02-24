require 'pry'

class String

  def sentence?
    self.end_with? (".")
  end

  def question?
    self.end_with? ("?")
  end

  def exclamation?
    self.end_with? ("!")
  end

  def count_sentences
    array = self.split(/\.|\?|\!/)
    array.each do |w|
      if w.length < 2
        array.delete(w)
      end
    end
  array.count
  end

end
