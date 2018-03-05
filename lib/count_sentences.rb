require 'pry'

class String

  def sentence?
  if self.end_with?(".")
     true
   else false
  end

  end

  def question?
    if self.end_with?("?")
       true
     else false
    end
  end

  def exclamation?
    if self.end_with?("!")
       true
     else false
    end

  end


  def count_sentences

    self.gsub! /[.*]/, "."

    self.gsub! /[!*]/, "."

    self.gsub! /[?*]/, "."
    str_array = self.split(".")
    str_array.length
    counter = 0
    str_array.each { |str| str = "" ? counter += 1: counter }
    # str_array.length =  str_array.length - counter
    puts str_array
    puts str_array.length
    puts counter

  end

end
a = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
a.count_sentences
