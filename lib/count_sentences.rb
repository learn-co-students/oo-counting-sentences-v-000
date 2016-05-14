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
	array = self.split(/\.|\!|\?/)
	new = array.reject { |x| x.nil? || x == '' }
	new.count
  end
  
  #def count_sentences
  #  self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  #end
end

#"This, well, is a sentence. This is too!! And so is this, I think? Woo..."
#["This, well, is a sentence", " This is too", "", " And so is this, I think", " Woo"]
