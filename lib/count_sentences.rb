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
    new_array = self.split(/\.|\!|\?/)
    new_array.delete_if do |something|
      something == ""
    end
    new_array.count
  end
end
