require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
  #  binding.pry
  # self.gsub(/\s+/, "").split(/\?|\.|!/).size
   self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
# .gsub(/\s+/, "")
