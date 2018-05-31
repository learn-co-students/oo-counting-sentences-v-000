require 'pry'

class String

  def sentence?
    self.end_with?(".")

  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences

#if question? | exclamation? | sentence?
  self.split(/[?.!]\s/).length
#else
#  self.length
#end
end


end
