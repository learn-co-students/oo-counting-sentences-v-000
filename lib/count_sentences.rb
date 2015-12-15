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
    count = 0
    x = self.split(/[!?.]/)
    x.each do |x| 
      if x.length > 1
        count +=1
      end  
    end
    count
end

end


