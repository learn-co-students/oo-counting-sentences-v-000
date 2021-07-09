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
    # This method works for regular sentences.
    # self.split(/\.|\?|!/).length
    self.split(/\.|\?|!/).delete_if {|w| w.size < 2}.size
  end
end
