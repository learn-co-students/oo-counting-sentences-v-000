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
sentence_array=[]
sentence_array= self.split(/[.?!]/)
sentence_array.delete_if {|x| x.length<1}
num=0
sentence_array.each do |b|
num+=1
end
return num

end
end