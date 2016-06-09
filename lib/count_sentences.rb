class String

  def sentence?
    self
    self.end_with?(".") ? true : false
  end

  def question?
    self
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self
      if string.include?(".")
      	 num_of_sentences = string.count(".")   
         num_of_sentences                                               
      else
         0
      end
  end
#
end
