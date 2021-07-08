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
    counted_array = []
    sentence_array = self.split(/(\.|!|\?)/)
      sentence_array.each do |x|
        if x.length > 1
          counted_array << x
        end
      end
    return counted_array.length
  end
  
end
