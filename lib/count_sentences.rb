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
    sentence = self.split(/[.?!]/)
    counter = 0
    sentence.each do |element|
        if element.include?("#{/[.?!]/}")
        elsif element.length > 1
          counter += 1
        end
    end
    counter
  end
end
