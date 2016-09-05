require 'pry'

class String

  def sentence?
    if self.end_with?("."); true
    else false
    end
  end

  def question?
    if self.end_with?("?"); true
    else false
    end
  end

  def exclamation?
    if self.end_with?("!"); true
    else false
    end
  end

  def count_sentences
    temp1 = ""
    matches = ""
    match_count = 0
    temp1 = self.split(". ")
    matches =  self.scan(/([A-Z][\w\s\d,]+[\.!?]+)/)
    match_count = matches.length 
    
    if match_count == 0
      temp1.length
    elsif match_count > temp1.length
      match_count
    else 
    end
  end
end