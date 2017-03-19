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
# self.split("." || "?" || "!")
# sentence_count = self.split("." || "?" || "!").length
# sentence_count = self.split(/\.|\?|!/).length
# if sentence_count >= 1
# puts sentence_count
# else
#   puts "0"
self.split(/[!.?]+/).count #at first I really didn't like Regex......
  end
end
