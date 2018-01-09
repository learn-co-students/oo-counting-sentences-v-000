class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    self.split(/[.?!]/).delete_if {|elem| elem.strip == ""}.count
  end
end
