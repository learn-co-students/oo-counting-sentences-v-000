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
    words = []
    not_words = []
    if !self.include?("." || "?" || "!")
      0
    else
      self.include?(".")
      self.split(/(\?|\.|\!)/).each do |target|
        if target == "." || target == "!" || target == "?" || target == ""
          not_words << target
        else
          words << target
        end
      end
      words.count
    end
  end
end
