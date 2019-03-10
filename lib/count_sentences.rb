require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
  end
end

  def question?
    self.end_with?("?") #Don't need to write true/false because the method appears to return it implicitly
    #   true
    # else
    #   false
  end
# end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    # There are two exclamation point characters in the middle of this set of 3 sentences
    # ("This is too!!") so it splits the sentence right between the 2 exclam. points,
    # leaving an empty string that the delete_if method deletes, via the code between the
    # curly braces.  Last it returns the size of the sentence string.
    self.split(/[.!?]/).delete_if {|x| x.empty?}.size

      # self.split(/[.!?]/).reject {|x| x.empty?}.size
      # above and below are also correct
      # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
      #For the code above, it deletes sentences that have a character size of less than
      # 2 characters and then returns the size of the sentence string.
      # It appears that a higher number than 2 could've been chosen.
      #






  end
end
