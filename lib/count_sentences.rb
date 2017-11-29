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
        x = 0
        self.split(/[.!?]/).each do |element|
            if element != ""
                # binding.pry
                x += 1
            end
        end
        x
    end


end
