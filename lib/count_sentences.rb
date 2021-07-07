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
    counter=0
    sentAr=self.split(" ")
    sentAr.each do |sent|
      if sent.sentence?
        counter+=1
      elsif sent.question?
        counter+=1
      elsif sent.exclamation?
        counter+=1
      end
    end
    counter
  end
end
