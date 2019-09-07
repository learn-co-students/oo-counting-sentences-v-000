require 'pry'

class String

  def sentence?
    self.match(/\.$/) ? true : false
  end

  def question?
    self.match(/\?$/) ? true : false
  end

  def exclamation?
    self.match(/!$/) ? true : false
  end

  def count_sentences
    sentences = 0
    self.split(" ").each do |word|
      sentences += 1 if word.sentence? || word.question? || word.exclamation?
    end
    sentences
  end
end
