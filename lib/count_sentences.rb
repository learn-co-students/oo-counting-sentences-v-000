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
    count = 0
    prev_char = ""
    self.split("").each do |char|
      sentence_end_char = char.include?("!") || char.include?(".") || char.include?("?")
      prev_char_not_end = !prev_char.include?("!") && !prev_char.include?(".") && !prev_char.include?("?")
      count += 1 if sentence_end_char && prev_char_not_end
      prev_char = char
    end
    count
  end
end
