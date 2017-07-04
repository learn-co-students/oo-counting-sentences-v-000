require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
  	self.end_with?('?')
  end

  def exclamation?
  	self.end_with?('!')
  end

  def count_sentences

  #split_by_period = self.split('.')
  #split_by_comma = []
  #split

  #split_by_period.each do |splitting|
  	#split_by_comma << splitting.split(',')
  #end

  #split

  self.split('.',',','!','?')
end