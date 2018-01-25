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
    #REGEX SOLUTION #
    # self.scan(/[!?.]\s/).length + self.scan(/[!?.]\z/).length
    
    # SPLIT/COUNT SOLUTION #
    sum = 0
    period = self.split(". ").count
    exclaim = self.split("! ").count
    question = self.split("? ").count

    if period > 0 # if it can be split by periods, do so.
      sum += period # add it to the sum
      if exclaim > 1 # if splitting by ! yields an array of 2 or more
        sum+= exclaim - 1 # subtract the initial split and add the rest to the sum
      end
      if question > 1 # if splitting by ? yields an array of 2 or more
        sum += question - 1 # subtract the initial split and add the rest to the sum
      end
    else
      sum = 0 # return a sum of 0 if the string is blank
    end   
    sum
  end