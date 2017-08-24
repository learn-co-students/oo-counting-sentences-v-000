require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
    sentence_count = self.split(/[!.?]/)
    sentence_count.delete_if {|x| x == ""}
    sentence_count.length
  end
end
