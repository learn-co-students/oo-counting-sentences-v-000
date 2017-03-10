require 'pry'

class String

  def sentence?
    self.end_with?(".")
    # => true, if sentence ends with a period
    # else
    # => false, if sentence does not end with a period
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[?!.]\s+[a-zA-Z]/).count  # #length method can also be used instead of #count
    # split string by delimeter [?!.] and include upper and lower case characters [a-zA-Z] after any whitespace (\s+)
  end
end

"Hello Venessa! How are you? Nice...".count_sentences
