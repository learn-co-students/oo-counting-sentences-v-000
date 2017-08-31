require 'pry'

class String

  def sentence?
    !!self.end_with?(".")
  end

  def question?
    !!self.end_with?("?")
  end

  def exclamation?
    !!self.end_with?("!")
  end

  def count_sentences
#    new_array = self.split(/!?./)
#    binding.pry
#    new_array.reject { |c|
#      c.empty?
#    }
    new_array = self.scan(/[^\.!?]+[\.!?]/).map(&:strip)
    new_array.size
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
