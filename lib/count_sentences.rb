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
    array = self.split(/\.|\?|!/)
    array_without_empty_strings = array.delete_if{|string| string.empty?}
    array_without_empty_strings.count
  end
end
