require 'pry'

class String

  def sentence?
    if self.end_with?("."); return true
    else return false
    end
  end

  def question?
    if self.end_with?("?"); return true
    else return false
    end
  end

  def exclamation?
    if self.end_with?("!"); return true
    else return false
    end
  end

  def count_sentences
    # temp1 = ""
    # matches = ""
    # match_count = 0
    # temp1 = self.split(". ")
    # matches =  
    self.scan(/([A-Z][\w\s\d,]+[\.!?]+)/).size
    # match_count = matches.length

# puts "---------------OUPUT REPORT---(UNCOMMENT TO DISPLAY)--------------"
# puts "Self (untouched): #{self}"
# puts "temp1, split on_._:     #{temp1}"
# puts "temp1.length:            #{temp1.length}"
# puts "matches, regex matches: #{matches}"
# puts "match_count: #{match_count}"
    
    # if match_count == 0; return temp1.length
    # elsif match_count > temp1.length; return match_count
    # else 
    # end
  end
end

 

