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
    #new_array = self.split(/\.?\s+/, 3)
    #new_array = self.split(/[[:punct:]]/)
    #new_array = self.split(/(\.)(\!)(\?)/)
    #final = new_array.count
    #new_array.join(",")
    #new_array.map do |i|
      #if i == "" || i == "." || i == " " || i == "!" || #i == ","
        #new_array.delete(i)
      #end 
    #end 
    #final = new_array.count
    #binding.pry 
    new_array = self.split(/\?|\.|!/)
    #final = new_array.count 
    #final
    new_array.map do |i|
      if i == "!" || i == ""
        new_array.delete(i)
      end 
    end 
    new_array = new_array.size 
    new_array 
    #binding.pry
  end
end