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
    complex_string = self.split(". ")
    counter = complex_string.count
      complex_string.each do |string|
        if string.include? "! "
          counter += string.split("! ").count
        elsif string.include? "? "
          counter += string.split("? ").count
        else
        end
      end
    counter
  end
end
