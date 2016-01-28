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
  	#scan way
  	self.scan(/[^\.+!+\?+]+[\.+!+\?+]/).length
  	
  	#split way
  	self.split(/[\.+!+\?+]/).reject {|str| str.length < 1}.length
  end
end
