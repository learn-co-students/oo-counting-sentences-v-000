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
    new_array = self.split(/[.?!]/)
    new_array.each do |element|
      if element == "" || element = " "
        new_array.delete(element)
      end
    end
    new_array.count
  end
end