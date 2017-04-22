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
   sentence = self.split(".")
   exclamation = []
   sentence.each do |sent|
       exclamation << sent.split("!")
    end
    question = []
    exclamation.each do |sent|
      sent.each do |sent2|
        question << sent2.split("?")
       end
   end
     question
     answer = []
     question.each do |sent|
       sent.each do |sent2|
         if sent2 != ""
           answer << sent2
         end
       end
     end
     return answer.length

  end
end
