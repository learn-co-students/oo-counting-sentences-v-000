require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    elsif self.end_with?("?")
      true
    elsif self.end_with?("!")
      true
    else
      false
    end
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    counter = 0
    self.split(" ").each do |a|
      if a.end_with?(".")
      counter += 1
      elsif  a.end_with?("?")
      counter += 1
      elsif  a.end_with?("!")
      counter += 1
      end
    end
    counter
  end
end