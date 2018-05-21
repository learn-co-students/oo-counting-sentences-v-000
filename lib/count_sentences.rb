require 'pry'

class String

  def sentence?
    # this is their (simpler) solution:
    # self.end_with?(".")

    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    # this is their (simpler) solution:
    # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size

    self.scan(/[\.\!\?](?=\s|$)/).size
  end
end
