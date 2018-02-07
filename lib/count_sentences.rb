require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    count = 0
    self.split(" ").each do |sentence|
      count += 1 if sentence.sentence? || sentence.question? || sentence.exclamation?
    end
    return count

    # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size

  end
end
