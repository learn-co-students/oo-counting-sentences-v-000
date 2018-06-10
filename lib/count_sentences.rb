require 'pry'

class String

  def sentence?
    # if self.end_with?(".")
    #   true
    # else
    #   false
    # end
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    array = self.split(" ")
    counter = 0
      array.each do |x|
        if x.sentence? || x.question? || x.exclamation? && x.length > 1
          counter += 1
        end
      end
    counter
  end

end
