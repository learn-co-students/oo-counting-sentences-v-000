require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

def count_sentences
  final_array = []
  arr = self.split(/[.!?]/)
  i=0
  while i < arr.length
    if arr[i] != ""
      final_array << arr[i]
    end
  i +=1
  end
  final_array.length
end

end
