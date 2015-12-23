require 'pry'

class String

  def sentence?
    self.match(/\.\z/) ? true : false
  end

  def question?
    self.match(/\?\z/) ? true : false
  end

  def exclamation?
    self.match(/\!\z/) ? true : false
  end

  def count_sentences
    self.split(/[\.\?!]/).reject {|string| string.empty?}.count
  end

end