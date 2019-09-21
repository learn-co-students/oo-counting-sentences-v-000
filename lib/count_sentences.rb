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
    count_array = self.split(/[!.?]/).delete_if {|w| w.size < 2}
    count_array.count
  end
end
