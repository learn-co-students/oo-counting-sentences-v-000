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
    count = self.split(" ")
    collection = []
    count.select do |items|
     if items.end_with?(".","!","?")
      collection<<items
  
      end
    end
    collection.size
  end

end