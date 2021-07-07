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
      sentence = []
   self.split(" ").each do |word|
      if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
        sentence << word
      end
   end
    sentence.count
  end
end
