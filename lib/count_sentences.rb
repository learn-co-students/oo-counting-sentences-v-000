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

=begin
  def count_sentences
    counter = 0
    self.split.each do |x|
      if x.sentence? || x.question? || x.exclamation?
        counter += 1
      end
    end
    return counter
  end
        ********REFACTORED METHOD BELOW \/*******
            DON'T BE AFRAID OF REGEX! YOU GOT THIS!
=end

  def count_sentences
    self.split.count { |x| /\?|\.|\!/.match(x) }
  end

end #<---- method end
