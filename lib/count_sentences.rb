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
  arr = self.split(/[.!?]/)
  puts arr
  arr.map.with_index{|x, i|
     if arr[i].size <= 1
        arr.delete_at(i)
      end
    }
    arr.size
  end
end
