require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false 
  end

  def count_sentences
    number = 0
    split.each do |word|
      number += 1 if (word.sentence? || word.question? || word.exclamation?)
    end
    number
  end
end