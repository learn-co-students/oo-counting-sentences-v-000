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
    fill_array_with_real_values = []
    new_array = self.split(/\.|\!|\?/)
      new_array.delete_if do |i|
        if i == ""
          new_array.delete(i)
        end
        fill_array_with_real_values <<  i
      end
    fill_array_with_real_values.count
  end
end
