require 'pry'

class String

  def sentence?
    question? || exclamation? || self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = 0
    found_flag = false
    self.each_char do |character|
      if character == "." || character == "?" || character == "!"
        if !found_flag
           sentences += 1
           found_flag = true
        end
      else
        found_flag = false
      end
    end
    sentences
  end
end
