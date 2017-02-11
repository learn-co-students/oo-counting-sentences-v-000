require 'pry'

class String

  def sentence?()
    self.end_with?(".")
end

  def question?()
    self.end_with?("?")
  end

  def exclamation?()
    self.end_with?("!")
  end

  def count_sentences #can probably call .length on split items
    total = 0
    if self == ""
      return 0
    else
      fuckregex = self.split(/[!.?]/)
      fuckregex.each do |i|
        if i.length > 0
          total += 1
        end
      end
    return total
    end
  end
end
