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
    self.split(/[\.?!]/).count {|sentence| sentence != ""}
    # we split the the sentences up with specific symbols that we sentences
    # count for every sentence that is not empty
  end
end
