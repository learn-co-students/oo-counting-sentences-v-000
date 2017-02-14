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
    count = self.split(/(?<=[.?!])/)
    final = []
    count.each do |value|
      if value != "." && value != "?" && value != "!"
        final << value
      end
    end
    final.length
  end
end
