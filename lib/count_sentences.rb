class String
  def sentence?
    if self.end_with?(".")
      true
    else false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else false
    end
  end

  def count_sentences
      self.split(" ")
      #if self.sentence?
      # self.each do |string|
      #   if string.last_char("." || "?")
           self.scan(/./).length
         #end
      # end
      #self.count("?, .")
    #else false
    #end
  end
end
