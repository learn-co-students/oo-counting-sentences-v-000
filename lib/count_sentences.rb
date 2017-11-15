require 'pry'

class String

  def sentence?
    String.scan(/[!.?]\z/)
    binding.pry
  end

  def question?

  end

  def exclamation?

  end

  def count_sentences

  end
end