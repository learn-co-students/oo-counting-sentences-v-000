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
  	count = 0
  	array.each do |split|
  		split.sentence? ? count +=1 : nil
  		split.question? ? count +=1 : nil
  		split.exclamation? ? count +=1 : nil
  	end
  	count
  end
end
