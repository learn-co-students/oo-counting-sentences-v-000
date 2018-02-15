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
    count = 0
    if self.empty?
      return 0
    else
      sentences = self.split(/[.?!]/)
      sentences.each do |line|
        if !line.empty? 
          count += 1
        end
      end
      count
    end
  end
end