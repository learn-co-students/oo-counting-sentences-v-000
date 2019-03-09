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
    self.end_with?("?") #Didn't need to write true/false because the method appears to return it implicitly
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
      self.split(/\.|\?|\!/).delete_if { |x| x.empty?}.size
      # below is also correct
      # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size




  end
end
