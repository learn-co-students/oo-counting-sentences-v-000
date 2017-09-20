require 'pry'

class String

  def sentence?
    self.match(/\.$/) ? true : false
  end

  def question?
    self.match(/\?$/) ? true : false
  end

  def exclamation?
    self.match(/\!$/) ? true : false
  end

  def count_sentences
#   #scan returns array of all matches.. first i checked to see if sentence had
#  period, question, or exclamation mark followed by white space [!?.]+/s ("+" means one or more ... )
#   added a pipe which means "or" in Regex and did the same for if its end of line !?.]+$
# then i called .length to get the size of the array that was returned.
#  this is the longer version i did before refactoring  self.scan(/\.+$|\!+$|\?$+|\.+\s|\!+\s|\?+\s/).length
  self.scan(/[!?.]+\s|[!?.]+$/).length
  end
end
