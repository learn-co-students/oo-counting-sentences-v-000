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
    # self.scan(/[^\.!?]+[\.!?]/).count --> This works too.
    # we are capturing all characters that are not ., ! or ? till we get
    # characters that are  ., ! or ?. Which basically can be treated as a
    # sentence (in broad senses).
    self.squeeze('.!?').count('.!?')
    # .squeeze returns a new string where multiples of the same specified
    # character get replaced by a single character
  end
end
