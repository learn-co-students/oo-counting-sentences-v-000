require 'pry'

class String

attr_accessor :sentence, :question, :exclamation, :string
 
  
  def sentence?
    if sentence == nil
      @sentence = sentence
      self.sentence
      self.end_with?(".")
    end
  end

  

  def question?
    if question == nil
      @question = question
      self.question
      self.end_with?("?")
    end

  end

  def exclamation?
    if exclamation == nil
      @exclamation = exclamation
      self.exclamation
      self.end_with?("!")
    end
  end

  def count_sentences
    @string = string
    self.string
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
  
end

