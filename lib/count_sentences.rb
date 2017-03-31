require 'pry'

class String

  def sentence?
    self.end_with?('.') ? (return true) : (return false)
  end

  def question?
    self.end_with?('?') ? (return true) : (return false)
  end

  def exclamation?
    self.end_with?('!') ? (return true) : (return false)
  end

  def count_sentences
    array_new = []
    array_new_plus = []
    array_new = self.split(/[.!?]{1,}/)
=begin
      array_new.each do |widget|
        array_new_plus << widget if widget.length >0
      end
      # binding.pry

    return array_new_plus.count
=end
    return array_new.count
  end
end
