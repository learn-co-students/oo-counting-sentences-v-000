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
      sentence = self.split(/[\.!?]/)
        sentence.delete_if {|x| x.length < 2}
      sentence.count
    end 
  end

    # sentance = self.scan(/[.!?]/)
    # sentance.count

#(/((?<=[a-z0-9)][.?!])|(?<=[a-z0-9][.?!]"))\s+(?="?[A-Z])/)

#(/^[A-Z].+[\.!?]$/)