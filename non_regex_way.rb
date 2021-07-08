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

    tally1 = 0
    tally2 = 0
    tally3 = 0
    tally_all = 0

    temp1 = ""
    temp2 = ""
    temp3 = ""

    temp1 = self.split(".")
      tally1 = temp1.length

    temp1.each do |sentence| 
      temp2 = sentence.split("! ")
        tally2 = temp2.length
      end

    temp1.each do |sentence| 
      temp3 = sentence.split("? ")
        tally3 = temp3.length
      end

    tally_all = tally1+tally2+tally3
    tally23 = tally2+tally3

        # puts "------------------OUPUT REPORT---UNCOMMENT TO DISPLAY --------------"
        # puts "Self (untouched): #{self}"
        # puts "temp1, split on_._:       #{temp1}"
        # puts "temp2, split temp1 on_!_: #{temp2}"
        # puts "temp3, split temp1 on_?_: #{temp3}"
        # puts "tally1: #{tally1}"
        # puts "tally2: #{tally2}"
        # puts "tally3: #{tally3}"
        # puts "tally23:#{tally23}"
        # puts "tally_all: #{tally_all}"

    if tally_all == 0; return tally_all 
      elsif tally23 > tally1; return tally23
      else return tally1
    end
  end
  
end
