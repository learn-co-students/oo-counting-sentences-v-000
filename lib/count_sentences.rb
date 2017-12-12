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
    sentences_array = self.split("!").collect do |question|
      question.split("?").collect do |period|
        period.split(".")
      end
    end
    sentences_array.flatten.count
  end
end
