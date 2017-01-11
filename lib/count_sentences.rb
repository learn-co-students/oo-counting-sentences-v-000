require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = []
    self.split.each do |x|
      if x.end_with?(".") == true || x.end_with?("?") == true || x.end_with?("!") == true
        array << x
      end
    end
    array.length
  end
end


"one. two. three?"
""
"This, well, is a sentence. This is too!! And so is this, I think? Woo..."
