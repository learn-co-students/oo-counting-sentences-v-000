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
       count =0
      sentarray = self.split(/\.|\?|\!/)
      sentarray.each do |sent|
         count +=1 unless sent.empty?
       end
       count
  end

end