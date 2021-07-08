


def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/\b[A-Z][a-z]|\s|\S/) == true

end




\b[A-Z][a-z]|\s|\S
#   Hi, my name is Sophie.
#   Hi, my name is Sophie



##################################################################
##################################################################
################ first way using [-1,2] ##############################
require 'pry'

class String

  def sentence?
    if self[-1] != "."; return false
    else return true
    end
  end

  def question?
    if self[-1] != "?"; return false
    else return true
    end
  end

  def exclamation?
    if self[-1] != "!"; return false
    else return true
    end
  end

  def count_sentences   #  this fails, saved for the above code early draft
    tally = 0
    self.split(". ")

    puts self
    puts tally
  end
end
##################################################################
##################################################################
##############     2nd way, using .end_with?  ####################

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
##################################################################
##################################################################