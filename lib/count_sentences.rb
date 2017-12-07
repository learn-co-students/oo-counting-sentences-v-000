require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    n=0
    split.each do |word|
      n += 1 if (word.sentence? || word.question? || word.exclamation?)
    end
    n
  end
end
