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
    split = self.split(/(\.|\?|\!)/)
    count_str = split.count {|text| text != "!" && text != "?" && text != "." && text.empty? == false}
  end
end
