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
    count=0
    word_array=self.split((/\.|\?|\!/))
    word_array.each do |word|
     if !word.empty?
      puts word
       count+=1
     end
    end
  
   count
  end
end   #end class


