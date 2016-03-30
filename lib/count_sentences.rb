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
	num_sentences = 0
	x = self.split(" ")
	x.each do |word|
		if word.exclamation? || word.sentence? || word.question?
			num_sentences += 1
		end
	end
	num_sentences
  end
end

x = "Colton Staab!"
x.count_sentences
