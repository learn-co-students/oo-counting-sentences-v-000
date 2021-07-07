require 'pry'

class String

  def sentence?
    self.end_with?(".")

  end

  def question?
    self.end_with?("?" )
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count= 0
    self.split.each do |sentence|
      if sentence[-1].include?(".") || sentence[-1].include?("!") || sentence[-1].include?("?")
        sentence_count += 1
      end
    end
      sentence_count
  end

end
