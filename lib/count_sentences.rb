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
    #binding.pry
    self.split(/[.!?]/).reject{|e| e.to_s.empty?}.count

  end
end

#sentence?.question?.exclamation?.
#arr.reject { |e| e.to_s.empty? } #=> [1, 2, "s", "d"]

#arr.reject { |item| item.blank? }

#arr = arr.compact.reject { |h| h == "" }

#arr = arr.compact.delete_if { |h| h == "" }
#self.split(/[\!\s|\.\s|\?\s]$/).count.reject{|e| e.empty?}
