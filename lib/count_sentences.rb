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
  array_temp = []
  array_temp = self.split(/[.?!]/)
  count = 0
  array_temp.each do |sentence|
    if sentence.length > 2
      count = count + 1
    end
  end
  count
  end
end