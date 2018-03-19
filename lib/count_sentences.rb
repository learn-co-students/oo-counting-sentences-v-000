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
    #split string into array elements based on whitespaces
    #check each element to see if it ends with "." "?" "!"
    #count those elements....
    #could shovel them into new array and use array length
    #or could use a counter.
    # OR could use array.count {|element| booleanequation} => # of true
    x = self.split(' ')
    x.count {|element| element.end_with?('.', '?', '!')}
  end
end
