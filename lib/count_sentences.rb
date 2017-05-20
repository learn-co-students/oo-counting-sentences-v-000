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
    i = 0
     self.split.each do |var| 
      if var[-1].include?('.') || var[-1].include?('!') || var[-1].include?('?')
        i +=1
      end 
     end 
     return i
end
end 