require 'pry'

class String

  attr_accessor :sentence
  
  def sentence?
    @sentence.each do |punctuation| 
      punctuation.match(/[!.?]\z/)
    binding.pry
  end

  def question?

  end

  def exclamation?

  end

  def count_sentences

  end
end