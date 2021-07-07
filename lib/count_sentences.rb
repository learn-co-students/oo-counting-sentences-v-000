require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
  #binding.pry
  arr_count = []
  arr_count = self.split(" ")
  cnt = 0
  cnt = arr_count.count(){
     |word| 
      word.end_with?("?") || word.end_with?("!") || word.end_with?(".") }
     return cnt
  end
  
  
end