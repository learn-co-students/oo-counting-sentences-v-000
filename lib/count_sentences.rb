require 'pry'

class String
  
  def sentence?
   # use self keyword in this method 
    period = self.scan(/[.]\z/)
    period.any?
  end

  def question?
    question_mark = self.scan(/[?]\z/)
    question_mark.any?
  end

  def exclamation?
    exclamation_point = self.scan(/[!]\z/)
    exclamation_point.any?
  end

  def count_sentences
    sentence_count = self.scan(/\b[.?!]/)
    sentence_count.length
      
    
  end
end