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
    arr = self.split(/[.]|!|[?]/)
    arr.map do |item|
      if item.size == 0
        arr.delete(item)
      end
    end
    arr.size
  end
end
