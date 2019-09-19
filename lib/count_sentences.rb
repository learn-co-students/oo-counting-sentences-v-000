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
    my_array=[]
       my_array=self.split
       my_array.length
       i=0
       count=0
       while i < my_array.length
         if (my_array[i].sentence? || my_array[i].question? || my_array[i].exclamation?) then
           count+=1
         end
         i+=1
      end

      return count

  end
end
