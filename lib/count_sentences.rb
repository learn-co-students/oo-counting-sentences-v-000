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
  	# First: split the string on all /./?/!/ unless more than one occurence
  	## Need a regex
  	# Second: count the number of elements that result
  	self.split(/[\.|\?|\!]{1}\W/).delete_if {|w| w.length<2}.count
  	#binding.pry
  end
end