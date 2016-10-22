require 'pry'

class String

  def sentence?
    !!self.match(/\.$/)
  end

  def question?
      !!self.match(/\?$/)
  end

  def exclamation?
      !!self.match(/\!$/)
  end

  def count_sentences
      x=self.split.select {|item| item.match(/[\!\?\.]$/)}
      x.length
  end
end
