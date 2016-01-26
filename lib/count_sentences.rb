require 'pry'

class String

  def sentence?
  	#string.sentence? returns true if string ends in a period
  	if self.end_with?(".") then 
  		true
  	else
  		false
  	end    
  end

  def question?
  		#string.sentence? returns true if string ends in a question mark
  	if self.end_with?("?") then 
  		true
  	else
  		false
  	end 

  end

  def exclamation?
	#string.sentence? returns true if string ends in an exclamation mark
  	if self.end_with?("!") then 
  		true
  	else
  		false
  	end 
  end

  def count_sentences
  	self.split(%r{[.?!]\s|[.?!]"}).count
  end
end