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
  	s = self.split(/[.!?]/)
  	s.each do |sentence|
  		if sentence == ""
  			s.pop
  		end
  	end
  	s.size
  end
end
