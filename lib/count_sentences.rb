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
    split_sentences = nil
    split_sentences = self.split(/\.|\?|\!/)
    split_sentences.delete_if {|sentence| sentence.size < 2}
    split_sentences.size
  end
end