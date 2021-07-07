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
    array = self.split(" ")
    sentence_array = []
    sentence = ""
    array.each do |word|
      if word.sentence?
        sentence << word
        sentence_array << sentence
        sentence = ""
      elsif word.question?
        sentence << word
        sentence_array << sentence
        sentence = ""
      elsif word.exclamation?
        sentence << word
        sentence_array << sentence
        sentence = ""
      else
        sentence << word
      end
    end
    sentence_array.length
  end
end
