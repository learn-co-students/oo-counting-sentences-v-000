require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
      self[-1] == "?" ? true : false
  end

  def exclamation?
      self[-1] == "!" ? true : false
  end

  def count_sentences
    array = []
    array = self.split(/[\.\?\!]/)
    array.delete_if {|sentence| sentence == ""}
    #if array.include?(" ")
    #  array.delete sentence}
  #binding.pry
    array.size
  end
end
