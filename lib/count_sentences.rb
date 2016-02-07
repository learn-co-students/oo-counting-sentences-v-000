require 'pry'

class String

  def sentence?
    !!(self =~ /\.$/)    
  end

  def question?
    !!(self =~ /\?$/)
  end

  def exclamation?
    !!(self =~ /!/)
  end

  def count_sentences
    self.split(/\.+|!+|\?/).count
  end
#def count_sentences
#
#    tally1 = 0
#    tally2 = 0
#    tally3 = 0
#    tally_all = 0
#
#    temp1 = ""
#    temp2 = ""
#    temp3 = ""
#
#    temp1 = self.split(".")
#      tally1 = temp1.length
#
#    temp1.each do |sentence| 
#      temp2 = sentence.split("! ")
#        tally2 = temp2.length
#      end
#
#    temp1.each do |sentence| 
#      temp3 = sentence.split("? ")
#        tally3 = temp3.length
#      end
#
#    tally_all = tally1+tally2+tally3
#    tally23 = tally2+tally3
#
#    if tally_all == 0; return tally_all 
#      elsif tally23 > tally1; return tally23
#      else return tally1
#    end
#  end
end
