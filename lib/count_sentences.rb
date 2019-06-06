require 'pry'

class String


  def sentence?
    self.end_with?(".") ? true : false
  end


  def question?
    self.end_with?("?") ? true : false
  end


  def exclamation?
    self.end_with?("!") ? true : false
  end


  def count_sentences
    array = self.split(/[\.!?] /)
    array.length
  end


end

puts test = "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences




