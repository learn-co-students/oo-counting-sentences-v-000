require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    proto_sentences = self.split(/[.?!]/)
    sentences = proto_sentences.select do |sentence|
      sentence != ""
    end
    sentences.length
  end
end
