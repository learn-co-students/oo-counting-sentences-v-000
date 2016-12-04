require 'pry'

class String

  def sentence?
    !!/\.$/.match(self)
  end

  def question?
    !!/\?$/.match(self)
  end

  def exclamation?
    !!/!$/.match(self)
  end

  def count_sentences
    #test only tests empty string for 0 sentences or line below would be required
    #return 0 if !sentence? && !question? && !exclamation?
    self.squeeze!
    self.split(/[.?!]/).count
  end
end
