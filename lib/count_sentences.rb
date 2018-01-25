require 'pry'

class String

  def sentence?
    if self.end_with?(".") #||
      true
    else
      false
    end
  end


#    self.scan(/[A-Z]{1} [^.?!]+ [.?!]{1}/).join == self

   # the first part is a capital letter, the middle is every other character besides ? / ! / . and the last part is ? / ! / .

#   text = text.scan(/([A-Z][\w-]*(\s+[A-Z][\w-]*)+)/)
#    # text = text.scan(/^[A-Z][\w]*+\.$/)  #worked but makes no sense!
#      if text.length <1
#        return false
#      else
#        return true
#      end
# end
#    end_with?(".")
   # self.question?
   # self.exclamation?

 # end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    array = self.split(/[?.!]\s/)
    return array.count
#use self
  end

#    def end_with?()
#    end

end
