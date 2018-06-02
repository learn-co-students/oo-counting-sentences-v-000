require 'pry'

class String

  def sentence?
    end_with?(".") #don't have to use self.
  end

  def question?
    end_with?("?")
  end

  def exclamation?
    end_with?("!")
  end

  def count_sentences
    new_str = split
    counter = 0
    counter += new_str.count {|x| 
      x.sentence? || x.question? || x.exclamation? || x.end_with?("...")}
    counter
  end
end