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
    count = []
      sentence_array = self.split(/(\.|!|\?)/)
        sentence_array.each do |x|
          if x.length > 1
            count << x
          end
        end
      return count.length
  end
end
