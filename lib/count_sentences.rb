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
    self.squeeze("., ?, !").split(/\!|\.|\?/).count #.delete_if { |i| i.empty? }.count
    
  end
  sentence = "Helloo....I'm a complicated sentence. I think? Yes, yes I am!!"
  sentence.count_sentences
end
