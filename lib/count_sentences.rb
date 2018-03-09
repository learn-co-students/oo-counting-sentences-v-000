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
    str_array.delete_if {|w| w.size < 1}.size
    str_array.length


    # puts str_array
    # puts str_array.length
    # puts counter
  # self.split(/\.|\?|\!/).delete_if {|w| w.size < 1}.size
  # self.split(/[.*?*!*]/).delete_if {|w| w.size < 1}.size
  end

end
# a = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
# a.count_sentences
