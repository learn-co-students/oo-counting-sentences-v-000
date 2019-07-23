require 'pry'

class String
  
  def initilaize(sen_name)
    @sen_name = sen_name
  end

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
    # self.split(/[?!.]\s+[A-Z]/).length
    # self.split(/\w[?!.]/).length
    # self.split(/\w[?!.]/).delete_if{|w| Test for size in here}.length
    
    self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size
  end
end