require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(%r{[\.\?\!]+\s*}).count
    # count = 0
    # self.split(" ").each do |word|
    #   count += 1 if word.sentence? || word.question? || word.exclamation?
    # end
    # count
  end

end
