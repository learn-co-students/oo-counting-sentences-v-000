require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
  count = 0
  aString = ""
  aString = self.split(/[!?.]/)
    aString.each do |sentence|
      if (sentence != "")
        count = count + 1
      end
    end
    count
  end
end
