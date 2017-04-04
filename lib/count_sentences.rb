require 'pry'

class String

  def sentence?
    self[-1]=='.'?true:false
  end

  def question?
    self[-1]=='?'?true:false
  end

  def exclamation?
    self[-1]=='!'?true:false
  end

  def count_sentences
    sentences = self.split(/[.!?]/)
    sentences.select! {|sentence| sentence.length>0 }
    sentences.size
  end
end